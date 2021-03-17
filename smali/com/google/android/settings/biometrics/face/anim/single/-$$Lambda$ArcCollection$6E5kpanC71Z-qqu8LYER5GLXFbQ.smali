.class public final synthetic Lcom/google/android/settings/biometrics/face/anim/single/-$$Lambda$ArcCollection$6E5kpanC71Z-qqu8LYER5GLXFbQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/anim/single/-$$Lambda$ArcCollection$6E5kpanC71Z-qqu8LYER5GLXFbQ;->f$0:Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/anim/single/-$$Lambda$ArcCollection$6E5kpanC71Z-qqu8LYER5GLXFbQ;->f$0:Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;

    invoke-virtual {p0, p1}, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->lambda$stopRotating$0$ArcCollection(Landroid/animation/ValueAnimator;)V

    return-void
.end method
