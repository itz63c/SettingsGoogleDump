.class public Lcom/google/android/settings/biometrics/face/FaceEnrollTrampoline;
.super Landroidx/fragment/app/FragmentActivity;
.source "FaceEnrollTrampoline.java"


# instance fields
.field private mExtras:Landroid/content/Intent;

.field private mShouldIgnoreOnResume:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 40
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p1, 0x4

    const/4 v0, 0x1

    if-eq p2, p1, :cond_1

    const/4 p1, 0x5

    if-eq p2, p1, :cond_0

    .line 56
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 51
    :cond_0
    iput-boolean v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollTrampoline;->mShouldIgnoreOnResume:Z

    .line 52
    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollTrampoline;->mExtras:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/google/android/settings/biometrics/face/FaceEnrollTrampoline;->startEnrollActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 43
    :cond_1
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollTrampoline;->mExtras:Landroid/content/Intent;

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 p2, 0x0

    const-string p3, "accessibility_diversity"

    .line 44
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "from_multi_timeout"

    .line 45
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 46
    iput-boolean v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollTrampoline;->mShouldIgnoreOnResume:Z

    .line 47
    invoke-virtual {p0, p1}, Lcom/google/android/settings/biometrics/face/FaceEnrollTrampoline;->startEnrollActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollTrampoline;->mExtras:Landroid/content/Intent;

    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollTrampoline;->mShouldIgnoreOnResume:Z

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 63
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 68
    iget-boolean v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollTrampoline;->mShouldIgnoreOnResume:Z

    if-nez v0, :cond_2

    .line 69
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollTrampoline;->mExtras:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/google/android/settings/biometrics/face/FaceEnrollTrampoline;->startEnrollActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 70
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/settings/biometrics/face/FaceEnrollParticipation;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollTrampoline;->mExtras:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    const/4 v1, 0x2

    .line 72
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public startEnrollActivity(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "accessibility_diversity"

    const/4 v1, 0x0

    .line 86
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.settings.future.biometrics.faceenroll.action.ENROLL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 93
    invoke-virtual {p0, v0, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
