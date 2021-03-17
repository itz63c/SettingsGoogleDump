.class public abstract Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;
.super Lcom/android/settings/core/InstrumentedActivity;
.source "ColumbusGestureTrainingBase.java"

# interfaces
.implements Lcom/google/android/settings/gestures/columbus/ColumbusGestureHelper$GestureListener;


# instance fields
.field protected mColumbusGestureHelper:Lcom/google/android/settings/gestures/columbus/ColumbusGestureHelper;

.field private mIndicatorView:Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView;

.field private mLaunchedFrom:Ljava/lang/String;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected clearIndicator()V
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;->mIndicatorView:Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView;

    invoke-virtual {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView;->clear()V

    return-void
.end method

.method protected flowTypeAccidentalTrigger()Z
    .locals 1

    .line 117
    iget-object p0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;->mLaunchedFrom:Ljava/lang/String;

    const-string v0, "accidental_trigger"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method protected flowTypeDeferredSetup()Z
    .locals 1

    .line 109
    iget-object p0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;->mLaunchedFrom:Ljava/lang/String;

    const-string v0, "deferred_setup"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method protected flowTypeSettingsSuggestion()Z
    .locals 1

    .line 113
    iget-object p0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;->mLaunchedFrom:Ljava/lang/String;

    const-string v0, "settings_suggestion"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method protected flowTypeSetup()Z
    .locals 1

    .line 105
    iget-object p0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;->mLaunchedFrom:Ljava/lang/String;

    const-string v0, "setup"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method protected handleDone()V
    .locals 2

    const/4 v0, -0x1

    .line 121
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 122
    iget-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;->mColumbusGestureHelper:Lcom/google/android/settings/gestures/columbus/ColumbusGestureHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureHelper;->setListener(Lcom/google/android/settings/gestures/columbus/ColumbusGestureHelper$GestureListener;)V

    .line 123
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method

.method protected launchColumbusGestureSettings(I)V
    .locals 3

    .line 97
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    const-class v1, Lcom/android/settings/SubSettings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 99
    const-class v1, Lcom/google/android/settings/gestures/columbus/ColumbusSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":settings:show_fragment"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, ":settings:source_metrics"

    .line 100
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 42
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const-class p1, Landroid/view/WindowManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;->mWindowManager:Landroid/view/WindowManager;

    .line 44
    new-instance p1, Lcom/google/android/settings/gestures/columbus/ColumbusGestureHelper;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;->mColumbusGestureHelper:Lcom/google/android/settings/gestures/columbus/ColumbusGestureHelper;

    .line 45
    invoke-virtual {p1, p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureHelper;->setListener(Lcom/google/android/settings/gestures/columbus/ColumbusGestureHelper$GestureListener;)V

    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "launched_from"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;->mLaunchedFrom:Ljava/lang/String;

    .line 47
    new-instance p1, Landroid/view/ContextThemeWrapper;

    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    .line 50
    new-instance v0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView;

    invoke-direct {v0, p1}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;->mIndicatorView:Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView;

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 76
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onPause()V

    .line 77
    iget-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;->mColumbusGestureHelper:Lcom/google/android/settings/gestures/columbus/ColumbusGestureHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureHelper;->setListener(Lcom/google/android/settings/gestures/columbus/ColumbusGestureHelper$GestureListener;)V

    .line 78
    iget-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;->mColumbusGestureHelper:Lcom/google/android/settings/gestures/columbus/ColumbusGestureHelper;

    invoke-virtual {v0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureHelper;->unbindFromColumbusServiceProxy()V

    .line 79
    invoke-virtual {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;->clearIndicator()V

    .line 80
    iget-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;->mIndicatorView:Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 58
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onResume()V

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/settings/gestures/columbus/ColumbusPreferenceController;->isColumbusEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 62
    iget-object v1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;->mIndicatorView:Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView;

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView;->getLayoutParams(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 62
    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    iget-object v1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;->mColumbusGestureHelper:Lcom/google/android/settings/gestures/columbus/ColumbusGestureHelper;

    invoke-virtual {v1}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureHelper;->bindToColumbusServiceProxy()V

    .line 66
    iget-object v1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;->mColumbusGestureHelper:Lcom/google/android/settings/gestures/columbus/ColumbusGestureHelper;

    invoke-virtual {v1, p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureHelper;->setListener(Lcom/google/android/settings/gestures/columbus/ColumbusGestureHelper$GestureListener;)V

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 69
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    :cond_0
    return-void
.end method

.method public onTrigger()V
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;->mIndicatorView:Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView;

    invoke-virtual {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView;->onTrigger()V

    return-void
.end method

.method protected showIndicator()V
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;->mIndicatorView:Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView;

    invoke-virtual {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView;->onTrigger()V

    return-void
.end method
