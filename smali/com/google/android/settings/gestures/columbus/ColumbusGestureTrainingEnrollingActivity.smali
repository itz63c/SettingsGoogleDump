.class public Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;
.super Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;
.source "ColumbusGestureTrainingEnrollingActivity.java"


# instance fields
.field private mFirstGesture:Landroid/widget/TextView;

.field private mFirstGestureDetected:Z

.field private final mHandler:Landroid/os/Handler;

.field private mSecondGesture:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;-><init>()V

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic lambda$Kj34Zuat7fBD0cdCFlfWAWJirJE(Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;->onEnrollComplete()V

    return-void
.end method

.method public static synthetic lambda$OZeIFe_zruAqGR-7fRYBgmym9yg(Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;->onCancelButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onTrigger$0()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;->mSecondGesture:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    invoke-virtual {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;->showIndicator()V

    return-void
.end method

.method private synthetic lambda$onTrigger$1()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;->mFirstGesture:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    invoke-virtual {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;->showIndicator()V

    return-void
.end method

.method private onCancelButtonClicked(Landroid/view/View;)V
    .locals 0

    const/16 p1, 0x65

    .line 87
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method

.method private onEnrollComplete()V
    .locals 3

    .line 80
    invoke-virtual {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;->clearIndicator()V

    .line 81
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "columbus_gesture_setup_complete"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 82
    invoke-direct {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;->startFinishedActivity()V

    .line 83
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method

.method private startFinishedActivity()V
    .locals 3

    .line 92
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingFinishedActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "launched_from"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x2000000

    .line 94
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 96
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x6d5

    return p0
.end method

.method public synthetic lambda$onTrigger$0$ColumbusGestureTrainingEnrollingActivity()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;->lambda$onTrigger$0()V

    return-void
.end method

.method public synthetic lambda$onTrigger$1$ColumbusGestureTrainingEnrollingActivity()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;->lambda$onTrigger$1()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    const v0, 0x7f06007c

    .line 38
    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 40
    invoke-super {p0, p1}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0522

    .line 42
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;->mFirstGesture:Landroid/widget/TextView;

    const p1, 0x7f0d052b

    .line 43
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;->mSecondGesture:Landroid/widget/TextView;

    const p1, 0x7f0d02f0

    .line 45
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupdesign/GlifLayout;

    .line 46
    const-class v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 47
    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f04054e

    .line 49
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/settings/gestures/columbus/-$$Lambda$ColumbusGestureTrainingEnrollingActivity$OZeIFe_zruAqGR-7fRYBgmym9yg;

    invoke-direct {v1, p0}, Lcom/google/android/settings/gestures/columbus/-$$Lambda$ColumbusGestureTrainingEnrollingActivity$OZeIFe_zruAqGR-7fRYBgmym9yg;-><init>(Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;)V

    .line 50
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p0

    const/4 v0, 0x2

    .line 51
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p0

    const v0, 0x7f1301f3

    .line 52
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p0

    .line 53
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p0

    .line 47
    invoke-virtual {p1, p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    return-void
.end method

.method public onTrigger()V
    .locals 4

    .line 64
    iget-boolean v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;->mFirstGestureDetected:Z

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/settings/gestures/columbus/-$$Lambda$ColumbusGestureTrainingEnrollingActivity$0XxQd0fxxldymFZ0QytzRzreMOU;

    invoke-direct {v1, p0}, Lcom/google/android/settings/gestures/columbus/-$$Lambda$ColumbusGestureTrainingEnrollingActivity$0XxQd0fxxldymFZ0QytzRzreMOU;-><init>(Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69
    iget-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/settings/gestures/columbus/-$$Lambda$ColumbusGestureTrainingEnrollingActivity$Kj34Zuat7fBD0cdCFlfWAWJirJE;

    invoke-direct {v1, p0}, Lcom/google/android/settings/gestures/columbus/-$$Lambda$ColumbusGestureTrainingEnrollingActivity$Kj34Zuat7fBD0cdCFlfWAWJirJE;-><init>(Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;->mFirstGestureDetected:Z

    .line 72
    iget-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/settings/gestures/columbus/-$$Lambda$ColumbusGestureTrainingEnrollingActivity$wMv4T_vuIw5VLGnRtczeAU1NwzI;

    invoke-direct {v1, p0}, Lcom/google/android/settings/gestures/columbus/-$$Lambda$ColumbusGestureTrainingEnrollingActivity$wMv4T_vuIw5VLGnRtczeAU1NwzI;-><init>(Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
