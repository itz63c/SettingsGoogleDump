.class public final synthetic Lcom/google/android/settings/biometrics/face/anim/-$$Lambda$FaceEnrollAnimationBase$yovSdkNehTmG546Zd2j4tsmkkWA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/TimeAnimator$TimeListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/anim/-$$Lambda$FaceEnrollAnimationBase$yovSdkNehTmG546Zd2j4tsmkkWA;->f$0:Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase;

    return-void
.end method


# virtual methods
.method public final onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/-$$Lambda$FaceEnrollAnimationBase$yovSdkNehTmG546Zd2j4tsmkkWA;->f$0:Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase;->lambda$onBoundsChange$0$FaceEnrollAnimationBase(Landroid/animation/TimeAnimator;JJ)V

    return-void
.end method
