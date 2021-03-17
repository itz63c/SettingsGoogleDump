.class public final synthetic Lcom/google/android/settings/biometrics/face/anim/single/-$$Lambda$RotatingArc$_ojvuzzvtCg8JD3i-8SV-kKVsho;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/settings/biometrics/face/anim/single/RotatingArc;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/settings/biometrics/face/anim/single/RotatingArc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/anim/single/-$$Lambda$RotatingArc$_ojvuzzvtCg8JD3i-8SV-kKVsho;->f$0:Lcom/google/android/settings/biometrics/face/anim/single/RotatingArc;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/anim/single/-$$Lambda$RotatingArc$_ojvuzzvtCg8JD3i-8SV-kKVsho;->f$0:Lcom/google/android/settings/biometrics/face/anim/single/RotatingArc;

    invoke-virtual {p0, p1}, Lcom/google/android/settings/biometrics/face/anim/single/RotatingArc;->lambda$stopRotating$0$RotatingArc(Landroid/animation/ValueAnimator;)V

    return-void
.end method
