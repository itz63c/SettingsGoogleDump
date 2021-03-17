.class public Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingFinishedActivity;
.super Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;
.source "ColumbusGestureTrainingFinishedActivity.java"


# instance fields
.field private mAccessibilityAnnounced:Z

.field private final mHandler:Landroid/os/Handler;

.field private mLayout:Lcom/google/android/setupdesign/GlifLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;-><init>()V

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingFinishedActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic lambda$bkDhEcB22blaNGO21wUzoigKonU(Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingFinishedActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingFinishedActivity;->onSettingsButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$kHDyadP471I4Jcz7XDLp3MSxFlw(Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingFinishedActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingFinishedActivity;->onNextButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method private onNextButtonClicked(Landroid/view/View;)V
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;->flowTypeDeferredSetup()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;->flowTypeSettingsSuggestion()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;->flowTypeSetup()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;->flowTypeAccidentalTrigger()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 74
    invoke-virtual {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;->handleDone()V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    .line 70
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 71
    iget-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;->mColumbusGestureHelper:Lcom/google/android/settings/gestures/columbus/ColumbusGestureHelper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureHelper;->setListener(Lcom/google/android/settings/gestures/columbus/ColumbusGestureHelper$GestureListener;)V

    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    :cond_2
    :goto_1
    return-void
.end method

.method private onSettingsButtonClicked(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 79
    invoke-virtual {p0, p1}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;->launchColumbusGestureSettings(I)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x6d6

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    const v0, 0x7f06007d

    .line 31
    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    const v0, 0x7f0d02f0

    .line 33
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/GlifLayout;

    iput-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingFinishedActivity;->mLayout:Lcom/google/android/setupdesign/GlifLayout;

    .line 34
    invoke-super {p0, p1}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;->onCreate(Landroid/os/Bundle;)V

    .line 36
    iget-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingFinishedActivity;->mLayout:Lcom/google/android/setupdesign/GlifLayout;

    const-class v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 37
    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f04054f

    .line 39
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/settings/gestures/columbus/-$$Lambda$ColumbusGestureTrainingFinishedActivity$bkDhEcB22blaNGO21wUzoigKonU;

    invoke-direct {v1, p0}, Lcom/google/android/settings/gestures/columbus/-$$Lambda$ColumbusGestureTrainingFinishedActivity$bkDhEcB22blaNGO21wUzoigKonU;-><init>(Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingFinishedActivity;)V

    .line 40
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    const v1, 0x7f1301f3

    .line 42
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    .line 37
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 45
    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getSecondaryButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    .line 46
    invoke-virtual {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;->flowTypeDeferredSetup()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;->flowTypeSetup()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x4

    .line 47
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    .line 50
    :cond_1
    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f04077d

    .line 52
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    new-instance v2, Lcom/google/android/settings/gestures/columbus/-$$Lambda$ColumbusGestureTrainingFinishedActivity$kHDyadP471I4Jcz7XDLp3MSxFlw;

    invoke-direct {v2, p0}, Lcom/google/android/settings/gestures/columbus/-$$Lambda$ColumbusGestureTrainingFinishedActivity$kHDyadP471I4Jcz7XDLp3MSxFlw;-><init>(Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingFinishedActivity;)V

    .line 53
    invoke-virtual {v0, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    const/4 v2, 0x5

    .line 54
    invoke-virtual {v0, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    const v2, 0x7f1301f2

    .line 55
    invoke-virtual {v0, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    .line 50
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 58
    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p1

    .line 59
    invoke-virtual {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;->flowTypeDeferredSetup()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;->flowTypeSetup()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;->flowTypeSettingsSuggestion()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 62
    invoke-virtual {p1, p0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    goto :goto_1

    .line 63
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;->flowTypeAccidentalTrigger()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f04054d

    .line 64
    invoke-virtual {p1, p0, v0}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    goto :goto_1

    :cond_4
    :goto_0
    const v0, 0x7f040c77

    .line 60
    invoke-virtual {p1, p0, v0}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onTrigger()V
    .locals 3

    .line 89
    iget-boolean v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingFinishedActivity;->mAccessibilityAnnounced:Z

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingFinishedActivity;->mLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0400aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingFinishedActivity;->mAccessibilityAnnounced:Z

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingFinishedActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/settings/gestures/columbus/-$$Lambda$aV0ms0UMXAuL3Y-6Pn5muK5M2ss;

    invoke-direct {v1, p0}, Lcom/google/android/settings/gestures/columbus/-$$Lambda$aV0ms0UMXAuL3Y-6Pn5muK5M2ss;-><init>(Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingFinishedActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
