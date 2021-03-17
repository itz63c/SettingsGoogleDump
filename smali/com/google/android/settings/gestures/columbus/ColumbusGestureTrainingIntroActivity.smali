.class public Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingIntroActivity;
.super Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;
.source "ColumbusGestureTrainingIntroActivity.java"


# static fields
.field private static final FROM_ACCIDENTAL_TRIGGER_CLASS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingIntroActivity;

    .line 27
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingIntroActivity;->FROM_ACCIDENTAL_TRIGGER_CLASS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;-><init>()V

    return-void
.end method

.method private getFlowType()Ljava/lang/String;
    .locals 2

    .line 103
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    .line 104
    invoke-static {p0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isSetupWizardIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "setup"

    return-object p0

    .line 106
    :cond_0
    invoke-static {p0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isDeferredSetupWizard(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "deferred_setup"

    return-object p0

    .line 109
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.settings.gestures.ColumbusGestureSuggestion"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "settings_suggestion"

    return-object p0

    .line 111
    :cond_2
    sget-object v0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingIntroActivity;->FROM_ACCIDENTAL_TRIGGER_CLASS:Ljava/lang/String;

    .line 112
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "accidental_trigger"

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic lambda$SvL_u5wQNPNlnvXh1phQA2IWJ8o(Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingIntroActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingIntroActivity;->onCancelButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$jUkQOn8zSSOEYDMWvYAv1tWinKU(Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingIntroActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingIntroActivity;->onNextButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method private onCancelButtonClicked(Landroid/view/View;)V
    .locals 2

    .line 90
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "columbus_enabled"

    const/4 v1, 0x0

    .line 89
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/16 p1, 0x65

    .line 91
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method

.method private onNextButtonClicked(Landroid/view/View;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingIntroActivity;->startEnrollingActivity()V

    return-void
.end method

.method private startEnrollingActivity()V
    .locals 3

    .line 96
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    invoke-direct {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingIntroActivity;->getFlowType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "launched_from"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    const/4 v1, 0x1

    .line 99
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x6d4

    return p0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 67
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 69
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 35
    invoke-super {p0, p1}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f06007e

    .line 37
    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    const p1, 0x7f0d02f0

    .line 38
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupdesign/GlifLayout;

    .line 39
    const-class v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 40
    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f04158a

    .line 42
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/settings/gestures/columbus/-$$Lambda$ColumbusGestureTrainingIntroActivity$jUkQOn8zSSOEYDMWvYAv1tWinKU;

    invoke-direct {v1, p0}, Lcom/google/android/settings/gestures/columbus/-$$Lambda$ColumbusGestureTrainingIntroActivity$jUkQOn8zSSOEYDMWvYAv1tWinKU;-><init>(Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingIntroActivity;)V

    .line 43
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    const/4 v1, 0x5

    .line 44
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    const v1, 0x7f1301f2

    .line 45
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    .line 40
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 48
    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f040550

    .line 50
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/settings/gestures/columbus/-$$Lambda$ColumbusGestureTrainingIntroActivity$SvL_u5wQNPNlnvXh1phQA2IWJ8o;

    invoke-direct {v1, p0}, Lcom/google/android/settings/gestures/columbus/-$$Lambda$ColumbusGestureTrainingIntroActivity$SvL_u5wQNPNlnvXh1phQA2IWJ8o;-><init>(Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingIntroActivity;)V

    .line 51
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    const/4 v1, 0x2

    .line 52
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    const v1, 0x7f1301f3

    .line 53
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    .line 48
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    const p1, 0x7f0d0521

    .line 57
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 58
    invoke-direct {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingIntroActivity;->getFlowType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "accidental_trigger"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f040557

    .line 59
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    const p0, 0x7f040558

    .line 61
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method public onTrigger()V
    .locals 0

    return-void
.end method
