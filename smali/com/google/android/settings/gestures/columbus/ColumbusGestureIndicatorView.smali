.class public Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView;
.super Landroid/widget/FrameLayout;
.source "ColumbusGestureIndicatorView.java"


# instance fields
.field private mAnimator:Landroid/animation/Animator;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$4fUrz3tkXzklnwl9au6QrdrokJw(Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView;->lambda$onTrigger$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$NXt7kocTXhTmlRVaD3z0FaWJn2w(Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView;->lambda$onTrigger$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QifGIVf5tXIqk8hjsqd809CrIGE(Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView;->lambda$clear$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView;->mAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method private clearAnimator()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView;->mAnimator:Landroid/animation/Animator;

    :cond_0
    return-void
.end method

.method private synthetic lambda$clear$0()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView;->clearAnimator()V

    const/4 v0, 0x0

    .line 32
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method

.method private synthetic lambda$onTrigger$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 45
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 46
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method

.method private synthetic lambda$onTrigger$2()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 40
    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v3

    const/4 v4, 0x0

    aput v3, v0, v4

    .line 41
    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v3

    const/4 v4, 0x1

    aput v3, v0, v4

    .line 42
    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 39
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 44
    new-instance v1, Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView-$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView-$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 48
    new-instance v1, Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView$1;

    invoke-direct {v1, p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView$1;-><init>(Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 69
    iput-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView;->mAnimator:Landroid/animation/Animator;

    .line 70
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView-$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView-$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getLayoutParams(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 77
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v0, -0x80000000

    and-int/2addr p1, v0

    .line 79
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const v0, 0x1000018

    or-int v4, p1, v0

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const-string p1, "ColumbusGestureIndicatorView"

    .line 89
    invoke-virtual {v6, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object p0

    iput-object p0, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    return-object v6
.end method

.method public onTrigger()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView-$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView-$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
