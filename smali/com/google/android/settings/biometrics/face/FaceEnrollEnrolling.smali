.class public Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;
.super Landroidx/fragment/app/FragmentActivity;
.source "FaceEnrollEnrolling.java"

# interfaces
.implements Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$HelpController;
    }
.end annotation


# static fields
.field private static final SONIFICATION_AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field private mAnimationListener:Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase$AnimationListener;

.field private mCenterAcquired:Z

.field private mDebugConsent:Z

.field private mDescriptionText:Landroid/widget/TextView;

.field private mDidCommitPartialEnrollment:Z

.field private mDisabledFeatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEnrollmentStartTime:J

.field private mErrorText:Landroid/widget/TextView;

.field private mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

.field private mFromSetupWizard:Z

.field private mGazeFailCount:I

.field private mHandler:Landroid/os/Handler;

.field private mHelpController:Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$HelpController;

.field private mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mMultiAngleNotCenteredBeforeZeroZeroRunnable:Ljava/lang/Runnable;

.field private mNoProgressTimeoutRunnable:Ljava/lang/Runnable;

.field private mPreviewFragment:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

.field private mPreviouslyEnrolledFaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/face/Face;",
            ">;"
        }
    .end annotation
.end field

.field private mRemaining:I

.field private mRequireAttention:Z

.field private mRequireDiversity:Z

.field private mShouldManagePreview:Z

.field private mShowingAnimationHelp:Z

.field private mSidecar:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;

.field private mSingleFromMulti:Z

.field private mTalkbackEnabled:Z

.field protected mToken:[B

.field protected mUserId:I

.field private mUserManager:Landroid/os/UserManager;

.field private mVibrationEffect:Landroid/os/VibrationEffect;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public static synthetic $r8$lambda$Efgyw2VFAb4K7kA81Mx7wjqK8mg(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->onEnrollmentComplete()V

    return-void
.end method

.method public static synthetic $r8$lambda$H2lYnMUYXVhRo3AEaAd_z_oALMw(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->lambda$showPartialEnrollmentDialog$4(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Hs6k7KFTBXWUDbB5A1ha8LMM_DY(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->lambda$showGazeDialog$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$MGQjrKuHyl0MfB7SsXIrDqwb4Qk(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;Landroid/content/DialogInterface;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->lambda$showPartialEnrollmentDialog$5(Landroid/content/DialogInterface;Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NNhJ2gq_WPNQHUTI9QQBKg37UoQ(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$kwiYEVXB_ijlBjhX9UOgQhoF_OQ(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->onButtonNegative(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t1g9GJyKukCFDyL-AWkG5zxBEbY(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$x1dk1tctJW6dnfpucPYSNCbgmRQ(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->lambda$showPartialEnrollmentDialog$3(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 94
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    .line 96
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    .line 97
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->SONIFICATION_AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mDisabledFeatures:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 130
    iput v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mRemaining:I

    .line 238
    new-instance v0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling-$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling-$$ExternalSyntheticLambda7;-><init>(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;)V

    iput-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mMultiAngleNotCenteredBeforeZeroZeroRunnable:Ljava/lang/Runnable;

    .line 242
    new-instance v0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling-$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling-$$ExternalSyntheticLambda6;-><init>(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;)V

    iput-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mNoProgressTimeoutRunnable:Ljava/lang/Runnable;

    .line 255
    new-instance v0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$1;

    invoke-direct {v0, p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$1;-><init>(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;)V

    iput-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mAnimationListener:Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase$AnimationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mShowingAnimationHelp:Z

    return p0
.end method

.method static synthetic access$002(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mShowingAnimationHelp:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;)Landroid/os/Handler;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;)Landroid/widget/TextView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;)Lcom/google/android/setupcompat/template/FooterBarMixin;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mRequireDiversity:Z

    return p0
.end method

.method static synthetic access$600(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;)Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$HelpController;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mHelpController:Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$HelpController;

    return-object p0
.end method

.method static synthetic access$900(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->finishFromDialog(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private findNewlyEnrolledFace()Landroid/hardware/face/Face;
    .locals 6

    .line 789
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mPreviouslyEnrolledFaces:Ljava/util/List;

    const-string v1, "FaceEnrollEnrolling"

    if-nez v0, :cond_0

    const-string v0, "Previously enrolled faces not set!"

    .line 790
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :cond_0
    const-class v0, Landroid/hardware/face/FaceManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceManager;

    iget v2, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mUserId:I

    invoke-virtual {v0, v2}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 794
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 801
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v3, v2

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/face/Face;

    .line 802
    iget-object v5, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mPreviouslyEnrolledFaces:Ljava/util/List;

    if-eqz v5, :cond_3

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_3
    if-nez v3, :cond_4

    move-object v3, v4

    goto :goto_0

    :cond_4
    const-string p0, "Found more than one newly enrolled face."

    .line 806
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_5
    if-nez v3, :cond_6

    const-string p0, "No newly enrolled face found."

    .line 813
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-object v3

    :cond_7
    :goto_1
    const-string p0, "Failed to find newly enrolled face. No faces enrolled."

    .line 795
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private finishFromDialog(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 754
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 755
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 756
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private getLayout()Lcom/google/android/setupdesign/GlifLayout;
    .locals 1

    const v0, 0x7f0d04ac

    .line 760
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupdesign/GlifLayout;

    return-object p0
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mHelpController:Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$HelpController;

    const v1, 0x7f04084e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$HelpController;->access$700(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$HelpController;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 2

    .line 244
    iget v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mRemaining:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/16 v1, 0x19

    if-ne v0, v1, :cond_2

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSidecar:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;

    if-eqz v0, :cond_1

    .line 246
    invoke-virtual {v0}, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->cancelEnrollment()Z

    .line 247
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSidecar:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->logEnrollmentEnded(IZ)V

    :cond_1
    const v0, 0x7f040fb8

    .line 249
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x3

    .line 251
    invoke-direct {p0, v0, v1}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->showErrorDialog(Ljava/lang/CharSequence;I)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$showGazeDialog$2(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 p1, 0x0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    move p2, p1

    .line 613
    :goto_0
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mDisabledFeatures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge p2, v0, :cond_1

    .line 614
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mDisabledFeatures:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    move p2, v1

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    move p2, p1

    :goto_1
    if-nez p2, :cond_2

    .line 620
    iget-object p2, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mDisabledFeatures:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    :cond_2
    iget-object p2, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mDisabledFeatures:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array v1, p2, [I

    move p2, p1

    .line 625
    :goto_2
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mDisabledFeatures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_3

    .line 626
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mDisabledFeatures:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 628
    :cond_3
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSidecar:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;

    iget-boolean v2, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSingleFromMulti:Z

    iget-boolean v3, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mTalkbackEnabled:Z

    iget-boolean v4, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mShouldManagePreview:Z

    iget-boolean v5, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mDebugConsent:Z

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->init([IZZZZ)V

    .line 631
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mEnrollmentStartTime:J

    .line 632
    iput p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mGazeFailCount:I

    .line 633
    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSidecar:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;

    invoke-virtual {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->startEnrollment()V

    return-void
.end method

.method private synthetic lambda$showPartialEnrollmentDialog$3(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 707
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 708
    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->onEnrollmentComplete()V

    return-void
.end method

.method private synthetic lambda$showPartialEnrollmentDialog$4(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 711
    invoke-direct {p0, p1}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->restartEnrollmentFromDialog(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private synthetic lambda$showPartialEnrollmentDialog$5(Landroid/content/DialogInterface;Landroid/view/KeyEvent;)V
    .locals 0

    .line 712
    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->onEnrollmentComplete()V

    return-void
.end method

.method private onButtonNegative(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x2

    .line 774
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 775
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private onEnrollmentComplete()V
    .locals 4

    .line 685
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mHelpController:Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$HelpController;

    invoke-virtual {v0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$HelpController;->clearHelp()V

    .line 686
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mUserManager:Landroid/os/UserManager;

    iget v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 688
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mUserId:I

    const-string v3, "face_unlock_keyguard_enabled"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 693
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mRequireDiversity:Z

    if-eqz v0, :cond_1

    .line 694
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 696
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    const/4 v1, 0x2

    .line 697
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return-void
.end method

.method private restartEnrollmentFromDialog(Landroid/content/DialogInterface;)V
    .locals 4

    .line 718
    const-class v0, Landroid/hardware/face/FaceManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceManager;

    const-string v1, "FaceEnrollEnrolling"

    if-nez v0, :cond_0

    const-string p0, "Unable to remove face. Face manager was null!"

    .line 720
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 724
    :cond_0
    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->findNewlyEnrolledFace()Landroid/hardware/face/Face;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p0, "Unable to remove face. No newly enrolled face found."

    .line 726
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 731
    :cond_1
    iget v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mUserId:I

    new-instance v3, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$2;

    invoke-direct {v3, p0, p1}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$2;-><init>(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;Landroid/content/DialogInterface;)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/hardware/face/FaceManager;->remove(Landroid/hardware/face/Face;ILandroid/hardware/face/FaceManager$RemovalCallback;)V

    return-void
.end method

.method private setHeaderText(I)V
    .locals 1

    .line 764
    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/setupdesign/GlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 765
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 766
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    if-eq v0, p1, :cond_0

    .line 768
    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    .line 769
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private showErrorDialog(Ljava/lang/CharSequence;I)V
    .locals 2

    .line 780
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mRequireDiversity:Z

    iget-boolean v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mFromSetupWizard:Z

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/settings/biometrics/face/FaceErrorDialog;->newInstance(Ljava/lang/CharSequence;IZZ)Lcom/google/android/settings/biometrics/face/FaceErrorDialog;

    move-result-object p1

    .line 782
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class v0, Lcom/google/android/settings/biometrics/face/FaceErrorDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 784
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Can\'t show error after onSaveInstanceState, "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FaceEnrollEnrolling"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private showGazeDialog()V
    .locals 3

    .line 602
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mVibrationEffect:Landroid/os/VibrationEffect;

    sget-object v2, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->SONIFICATION_AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    .line 607
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSidecar:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;

    invoke-virtual {v0}, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->cancelEnrollment()Z

    .line 608
    invoke-static {}, Lcom/google/android/settings/biometrics/face/FaceGazeDialog;->newInstance()Lcom/google/android/settings/biometrics/face/FaceGazeDialog;

    move-result-object v0

    .line 609
    new-instance v1, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling-$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling-$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;)V

    invoke-virtual {v0, v1}, Lcom/google/android/settings/biometrics/face/FaceGazeDialog;->setButtonListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 635
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class v1, Lcom/google/android/settings/biometrics/face/FaceGazeDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showPartialEnrollmentDialog()V
    .locals 3

    .line 702
    invoke-static {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory;->newBuilder(Landroid/content/Context;)Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;

    move-result-object v0

    const v1, 0x7f040fd4

    .line 703
    invoke-virtual {v0, v1}, Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;->setTitle(I)Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;

    move-result-object v0

    const v1, 0x7f040fd2

    .line 704
    invoke-virtual {v0, v1}, Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;->setMessage(I)Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;

    move-result-object v0

    new-instance v1, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling-$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling-$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;)V

    const v2, 0x7f040fab

    .line 705
    invoke-virtual {v0, v2, v1}, Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;

    move-result-object v0

    new-instance v1, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling-$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling-$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;)V

    const v2, 0x7f040fd3

    .line 710
    invoke-virtual {v0, v2, v1}, Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;

    move-result-object v0

    new-instance v1, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling-$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling-$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;)V

    .line 712
    invoke-virtual {v0, v1}, Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;->setOnBackKeyListener(Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$OnBackKeyListener;)Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;

    move-result-object p0

    .line 713
    invoke-virtual {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;->build()Landroid/app/Dialog;

    move-result-object p0

    .line 714
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private startEnrollment()V
    .locals 9

    .line 456
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mEnrollmentStartTime:J

    .line 457
    const-class v0, Landroid/hardware/face/FaceManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceManager;

    iget v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mPreviouslyEnrolledFaces:Ljava/util/List;

    .line 460
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "tag_preview"

    .line 461
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    iput-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mPreviewFragment:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 463
    new-instance v0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-direct {v0}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;-><init>()V

    iput-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mPreviewFragment:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    .line 464
    iget-object v3, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mAnimationListener:Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase$AnimationListener;

    invoke-virtual {v0, v3}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->setAnimationListener(Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase$AnimationListener;)V

    .line 465
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mPreviewFragment:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    iget-boolean v3, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mFromSetupWizard:Z

    invoke-virtual {v0, v3}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->setFromSetupWizard(Z)V

    .line 466
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mPreviewFragment:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    iget-boolean v3, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mShouldManagePreview:Z

    invoke-virtual {v0, v3}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->setShouldManagePreview(Z)V

    .line 468
    iget-boolean v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mRequireDiversity:Z

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mPreviewFragment:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->setAnimationDrawableMode(Z)V

    goto :goto_0

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mPreviewFragment:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-virtual {v0, v2}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->setAnimationDrawableMode(Z)V

    .line 474
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mPreviewFragment:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-virtual {v0, v3, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 475
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_1

    .line 477
    :cond_1
    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mAnimationListener:Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase$AnimationListener;

    invoke-virtual {v0, v1}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->setAnimationListener(Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase$AnimationListener;)V

    .line 481
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "tag_sidecar"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;

    iput-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSidecar:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;

    if-nez v0, :cond_3

    .line 483
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mDisabledFeatures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v4, v0, [I

    .line 484
    :goto_2
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mDisabledFeatures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 485
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mDisabledFeatures:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 487
    :cond_2
    new-instance v3, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;

    invoke-direct {v3}, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;-><init>()V

    iput-object v3, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSidecar:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;

    .line 488
    iget-boolean v5, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSingleFromMulti:Z

    iget-boolean v6, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mTalkbackEnabled:Z

    iget-boolean v7, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mShouldManagePreview:Z

    iget-boolean v8, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mDebugConsent:Z

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->init([IZZZZ)V

    .line 490
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSidecar:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 491
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 493
    :cond_3
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSidecar:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;

    invoke-virtual {v0, p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->setListener(Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$Listener;)V

    .line 494
    iget-boolean v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mShouldManagePreview:Z

    if-nez v0, :cond_4

    .line 495
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSidecar:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mPreviewFragment:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->setPreviewSurfaceProvider(Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$PreviewSurfaceProvider;)V

    :cond_4
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 p3, 0x2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    if-eq p2, p3, :cond_0

    const/4 p1, 0x3

    if-ne p2, p1, :cond_2

    .line 393
    :cond_0
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 394
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    if-ne p1, p3, :cond_2

    .line 397
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 398
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 2

    const v0, 0x7f1301b7

    const/4 v1, 0x1

    .line 439
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 440
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 427
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSidecar:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 428
    invoke-virtual {v0, v1}, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->setListener(Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$Listener;)V

    .line 429
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSidecar:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;

    invoke-virtual {v0}, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->cancelEnrollment()Z

    .line 430
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 431
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSidecar:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 432
    iput-object v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSidecar:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;

    .line 434
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 289
    invoke-static {}, Lcom/google/android/setupdesign/util/ThemeResolver;->getDefault()Lcom/google/android/setupdesign/util/ThemeResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/setupdesign/util/ThemeResolver;->applyTheme(Landroid/app/Activity;)V

    const v0, 0x7f0600db

    .line 290
    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    const v0, 0x7f0d04e8

    .line 292
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/settings/biometrics/face/SquareFrameLayout;

    const v1, 0x7f0d02ad

    const/16 v2, 0x1e

    .line 293
    invoke-virtual {v0, v1, v2}, Lcom/google/android/settings/biometrics/face/SquareFrameLayout;->setOuterRegion(II)V

    .line 295
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "debug_consent"

    const-string v1, "from_multi_timeout"

    const-string v2, "accessibility_vision"

    const-string v3, "accessibility_diversity"

    const-string v4, "hw_auth_token"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    .line 298
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mToken:[B

    .line 299
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const-string v7, "user_id"

    invoke-virtual {p1, v7, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mUserId:I

    const-string v4, "is_suw"

    .line 300
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mFromSetupWizard:Z

    .line 301
    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mRequireDiversity:Z

    .line 302
    invoke-virtual {p1, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mRequireAttention:Z

    .line 303
    invoke-virtual {p1, v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSingleFromMulti:Z

    .line 305
    invoke-virtual {p1, v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mDebugConsent:Z

    goto :goto_0

    .line 307
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mToken:[B

    .line 308
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const-string v7, "android.intent.extra.USER_ID"

    invoke-virtual {p1, v7, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mUserId:I

    .line 309
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mFromSetupWizard:Z

    .line 310
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mRequireDiversity:Z

    .line 311
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mRequireAttention:Z

    .line 312
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSingleFromMulti:Z

    .line 314
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mDebugConsent:Z

    .line 317
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f09000b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mShouldManagePreview:Z

    .line 320
    const-class p1, Landroid/os/Vibrator;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mVibrator:Landroid/os/Vibrator;

    .line 321
    invoke-static {v5}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mVibrationEffect:Landroid/os/VibrationEffect;

    .line 323
    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object p1

    const-class v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 325
    invoke-virtual {p1, v6}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setRemoveFooterBarWhenEmpty(Z)V

    .line 327
    iget-boolean p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mFromSetupWizard:Z

    const v0, 0x7f1301f6

    const/4 v1, 0x2

    if-eqz p1, :cond_1

    .line 328
    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    new-instance v2, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v2, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f040851

    .line 330
    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v2

    new-instance v3, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling-$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling-$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;)V

    .line 331
    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v2

    const/4 v3, 0x7

    .line 332
    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v2

    .line 333
    invoke-virtual {v2, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    .line 334
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    .line 328
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    goto :goto_1

    .line 336
    :cond_1
    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    new-instance v2, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v2, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f040852

    .line 338
    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v2

    new-instance v3, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling-$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling-$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;)V

    .line 339
    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v2

    .line 340
    invoke-virtual {v2, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v2

    .line 341
    invoke-virtual {v2, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    .line 342
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    .line 336
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 346
    :goto_1
    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getSecondaryButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    .line 348
    const-class p1, Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mUserManager:Landroid/os/UserManager;

    .line 349
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mHandler:Landroid/os/Handler;

    const p1, 0x7f0d0203

    .line 350
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    const p1, 0x7f0d0522

    .line 351
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mDescriptionText:Landroid/widget/TextView;

    const p1, 0x10c000e

    .line 352
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 354
    new-instance p1, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$HelpController;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$HelpController;-><init>(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$1;)V

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mHelpController:Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$HelpController;

    .line 356
    iput-boolean v6, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mTalkbackEnabled:Z

    .line 357
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_3

    .line 362
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 363
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    move v6, v5

    :cond_2
    iput-boolean v6, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mTalkbackEnabled:Z

    .line 366
    :cond_3
    iget-boolean p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mRequireDiversity:Z

    if-nez p1, :cond_4

    const p1, 0x7f04085b

    .line 367
    invoke-direct {p0, p1}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->setHeaderText(I)V

    .line 368
    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mDescriptionText:Landroid/widget/TextView;

    const v0, 0x7f04084e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mDisabledFeatures:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    const p1, 0x7f04085a

    .line 371
    invoke-direct {p0, p1}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->setHeaderText(I)V

    .line 375
    :goto_2
    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mDisabledFeatures:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    iget-boolean p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mRequireDiversity:Z

    if-eqz p1, :cond_5

    .line 378
    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mMultiAngleNotCenteredBeforeZeroZeroRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 380
    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mNoProgressTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/32 v1, 0x80e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 384
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 386
    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->startEnrollment()V

    return-void
.end method

.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 4

    .line 641
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSidecar:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    invoke-virtual {v0, v3, v1}, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->logEnrollmentEnded(IZ)V

    if-ne p1, v2, :cond_1

    const v0, 0x7f040fb8

    .line 646
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_2

    :cond_1
    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    :goto_1
    move-object v0, p2

    goto :goto_2

    :cond_3
    const v0, 0x7f040fb7

    .line 653
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 657
    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 658
    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mPreviewFragment:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->onEnrollmentError(ILjava/lang/CharSequence;)V

    const/4 p2, 0x5

    if-eq p1, p2, :cond_4

    .line 661
    invoke-direct {p0, v0, p1}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->showErrorDialog(Ljava/lang/CharSequence;I)V

    :cond_4
    return-void
.end method

.method public onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 5

    const/4 v0, 0x1

    const/16 v1, 0x474

    if-ne p1, v1, :cond_0

    .line 502
    iput-boolean v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mDidCommitPartialEnrollment:Z

    .line 505
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mTalkbackEnabled:Z

    const v2, 0x7f04084e

    const v3, 0x7f04085d

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mRequireDiversity:Z

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0xb

    if-eq p1, v1, :cond_2

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_1

    :pswitch_0
    const p2, 0x7f040863

    .line 556
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_1

    .line 545
    :pswitch_1
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_1

    .line 541
    :cond_2
    :pswitch_2
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_1

    :cond_3
    :goto_0
    packed-switch p1, :pswitch_data_2

    :pswitch_3
    goto :goto_1

    .line 510
    :pswitch_4
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_1

    :pswitch_5
    const p2, 0x7f04085f

    .line 528
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_1

    :pswitch_6
    const p2, 0x7f040861

    .line 525
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_1

    :pswitch_7
    const p2, 0x7f040860

    .line 522
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_1

    :pswitch_8
    const p2, 0x7f04085e

    .line 519
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_1

    .line 516
    :pswitch_9
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_1

    :pswitch_a
    const p2, 0x7f04085c

    .line 513
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 562
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_b

    .line 563
    iget-boolean v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mCenterAcquired:Z

    if-nez v1, :cond_4

    const/16 v1, 0xa

    if-ne p1, v1, :cond_4

    iget-object v2, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSidecar:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;

    .line 564
    invoke-virtual {v2}, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->isEnrolling()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 567
    iget v2, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mGazeFailCount:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mGazeFailCount:I

    if-lt v2, v1, :cond_4

    .line 569
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mEnrollmentStartTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1388

    cmp-long v1, v1, v3

    if-ltz v1, :cond_4

    .line 571
    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->showGazeDialog()V

    .line 575
    :cond_4
    iget-boolean v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mRequireDiversity:Z

    if-nez v1, :cond_6

    if-eqz p1, :cond_5

    .line 577
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mHelpController:Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$HelpController;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$HelpController;->debounceAndMaybeShowHelp(ILjava/lang/CharSequence;)V

    goto :goto_2

    .line 579
    :cond_5
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mHelpController:Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$HelpController;

    invoke-virtual {v0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$HelpController;->clearHelpIfOverAttenuateThreshold()V

    goto :goto_2

    .line 582
    :cond_6
    invoke-static {p1}, Lcom/google/android/settings/biometrics/face/FaceUtils;->isOneOfCenterBuckets(I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mCenterAcquired:Z

    if-nez v1, :cond_7

    .line 583
    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mMultiAngleNotCenteredBeforeZeroZeroRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 584
    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mHelpController:Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$HelpController;

    invoke-virtual {v1}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$HelpController;->clearHelp()V

    .line 585
    iput-boolean v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mCenterAcquired:Z

    goto :goto_2

    :cond_7
    if-eqz p1, :cond_8

    .line 586
    iget-boolean v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mCenterAcquired:Z

    if-eqz v0, :cond_8

    .line 589
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mHelpController:Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$HelpController;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$HelpController;->debounceAndMaybeShowHelp(ILjava/lang/CharSequence;)V

    goto :goto_2

    :cond_8
    if-eqz p1, :cond_9

    .line 590
    iget-boolean v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mCenterAcquired:Z

    if-nez v0, :cond_9

    .line 592
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mHelpController:Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$HelpController;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$HelpController;->debounceAndMaybeShowHelp(ILjava/lang/CharSequence;)V

    goto :goto_2

    :cond_9
    if-nez p1, :cond_a

    .line 594
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mHelpController:Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$HelpController;

    invoke-virtual {v0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$HelpController;->clearHelpIfOverAttenuateThreshold()V

    .line 597
    :cond_a
    :goto_2
    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mPreviewFragment:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->onEnrollmentHelp(ILjava/lang/CharSequence;)V

    :cond_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x466
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onEnrollmentProgressChange(II)V
    .locals 2

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Steps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Remaining: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceEnrollEnrolling"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iput p2, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mRemaining:I

    .line 671
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mPreviewFragment:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->onEnrollmentProgressChange(II)V

    if-nez p2, :cond_1

    .line 674
    iget-boolean p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mDidCommitPartialEnrollment:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 675
    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSidecar:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->logEnrollmentEnded(IZ)V

    .line 676
    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->showPartialEnrollmentDialog()V

    goto :goto_0

    .line 678
    :cond_0
    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSidecar:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;

    invoke-virtual {p1, p2, p2}, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->logEnrollmentEnded(IZ)V

    .line 679
    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling-$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling-$$ExternalSyntheticLambda5;-><init>(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 445
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 446
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mToken:[B

    const-string v1, "hw_auth_token"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 447
    iget v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mUserId:I

    const-string v1, "user_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 448
    iget-boolean v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mFromSetupWizard:Z

    const-string v1, "is_suw"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 449
    iget-boolean v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mRequireAttention:Z

    const-string v1, "accessibility_vision"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 450
    iget-boolean v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mRequireDiversity:Z

    const-string v1, "accessibility_diversity"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 451
    iget-boolean v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSingleFromMulti:Z

    const-string v1, "from_multi_timeout"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 452
    iget-boolean p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mDebugConsent:Z

    const-string v0, "debug_consent"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onStop()V
    .locals 3

    .line 404
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    .line 406
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSidecar:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {v0, v1}, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->setListener(Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$Listener;)V

    .line 411
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mRemaining:I

    if-eqz v0, :cond_3

    .line 412
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSidecar:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;

    if-eqz v0, :cond_1

    .line 413
    invoke-virtual {v0}, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->cancelEnrollment()Z

    .line 414
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 415
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSidecar:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 416
    iput-object v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSidecar:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;

    .line 418
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mFromSetupWizard:Z

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 419
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 421
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
    return-void
.end method
