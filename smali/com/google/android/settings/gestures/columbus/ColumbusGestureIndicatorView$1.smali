.class Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView$1;
.super Ljava/lang/Object;
.source "ColumbusGestureIndicatorView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView;->lambda$onTrigger$2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView;


# direct methods
.method constructor <init>(Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView$1;->this$0:Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 61
    iget-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView$1;->this$0:Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView;

    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 62
    iget-object p0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView$1;->this$0:Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView;->access$002(Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView;Landroid/animation/Animator;)Landroid/animation/Animator;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 55
    iget-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView$1;->this$0:Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView;

    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 56
    iget-object p0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView$1;->this$0:Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView;->access$002(Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView;Landroid/animation/Animator;)Landroid/animation/Animator;

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
