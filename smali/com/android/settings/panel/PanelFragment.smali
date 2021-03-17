.class public Lcom/android/settings/panel/PanelFragment;
.super Landroidx/fragment/app/Fragment;
.source "PanelFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/settings/panel/PanelSlicesAdapter;

.field private mDoneButton:Landroid/widget/Button;

.field private mFooterDivider:Landroid/view/View;

.field private mHeaderLayout:Landroid/widget/LinearLayout;

.field private mHeaderSubtitle:Landroid/widget/TextView;

.field private mHeaderTitle:Landroid/widget/TextView;

.field mLayoutView:Landroid/view/View;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mMaxHeight:I

.field private mMetricsProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private final mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mPanel:Lcom/android/settings/panel/PanelContent;

.field private mPanelClosedKey:Ljava/lang/String;

.field private mPanelCreating:Z

.field private mPanelHeader:Landroid/widget/LinearLayout;

.field private final mPanelLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mPanelSlices:Landroidx/recyclerview/widget/RecyclerView;

.field mPanelSlicesLoaderCountdownLatch:Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mSeeMoreButton:Landroid/widget/Button;

.field private final mSliceLiveData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/slice/Slice;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTitleGroup:Landroid/widget/LinearLayout;

.field private mTitleIcon:Landroid/widget/ImageView;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$-ShZr5-ljayVGjTSX8eqHkwDaqI(Lcom/android/settings/panel/PanelFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/panel/PanelFragment;->lambda$getCloseListener$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DmcrNmEizUyL3RLdgwzlGOCunGw()Z
    .locals 1

    invoke-static {}, Lcom/android/settings/panel/PanelFragment;->lambda$new$0()Z

    move-result v0

    return v0
.end method

.method public static synthetic $r8$lambda$PaPGSxL5kKy3l1WQHWzqts9f34U(Lcom/android/settings/panel/PanelFragment;Landroid/net/Uri;Landroidx/slice/Slice;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/panel/PanelFragment;->lambda$loadAllSlices$3(Landroid/net/Uri;Landroidx/slice/Slice;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UsA5BSEz1NdCg1MmIigEwBXDibE(Lcom/android/settings/panel/PanelFragment;Landroid/net/Uri;ILjava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/panel/PanelFragment;->lambda$loadAllSlices$1(Landroid/net/Uri;ILjava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$edpaRyAjdArv5TpM96LEUMTvqy4(Lcom/android/settings/panel/PanelFragment;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/panel/PanelFragment;->lambda$loadAllSlices$2(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yfmhXqMAdI8O5m28S-d3zZ4uUeY(Lcom/android/settings/panel/PanelFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/panel/PanelFragment;->lambda$getSeeMoreListener$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z5C3djv1_NYW3MFRaFVE9eGxrps(Lcom/android/settings/panel/PanelFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/panel/PanelFragment;->lambda$getHeaderIconListener$6(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 105
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mSliceLiveData:Ljava/util/Map;

    .line 110
    sget-object v0, Lcom/android/settings/panel/PanelFragment-$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/settings/panel/PanelFragment-$$ExternalSyntheticLambda3;

    iput-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 114
    new-instance v0, Lcom/android/settings/panel/PanelFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/panel/PanelFragment$1;-><init>(Lcom/android/settings/panel/PanelFragment;)V

    iput-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 126
    new-instance v0, Lcom/android/settings/panel/PanelFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/panel/PanelFragment$2;-><init>(Lcom/android/settings/panel/PanelFragment;)V

    iput-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/panel/PanelFragment;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/android/settings/panel/PanelFragment;->mMaxHeight:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings/panel/PanelFragment;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/android/settings/panel/PanelFragment;->animateIn()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/panel/PanelFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlices:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/settings/panel/PanelFragment;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/android/settings/panel/PanelFragment;->mPanelCreating:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/panel/PanelFragment;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/android/settings/panel/PanelFragment;->createPanelContent()V

    return-void
.end method

.method static synthetic access$502(Lcom/android/settings/panel/PanelFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/android/settings/panel/PanelFragment;->mPanelClosedKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/settings/panel/PanelFragment;)Lcom/android/settings/panel/PanelContent;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/settings/panel/PanelFragment;Ljava/lang/CharSequence;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/android/settings/panel/PanelFragment;->enableTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/panel/PanelFragment;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/panel/PanelFragment;->enablePanelHeader(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/panel/PanelFragment;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/android/settings/panel/PanelFragment;->enableCustomizedButton()V

    return-void
.end method

.method private animateIn()V
    .locals 7

    .line 414
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    const v1, 0x7f0d03dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 415
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    .line 416
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/16 v6, 0xfa

    .line 415
    invoke-static/range {v1 .. v6}, Lcom/android/settings/panel/PanelFragment;->buildAnimatorSet(Landroid/view/View;FFFFI)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 419
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 420
    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 421
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 422
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 424
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static buildAnimatorSet(Landroid/view/View;FFFFI)Landroid/animation/AnimatorSet;
    .locals 5

    const v0, 0x7f0d03dc

    .line 436
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 437
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    int-to-long v1, p5

    .line 438
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 439
    new-instance p5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 p5, 0x2

    new-array v1, p5, [Landroid/animation/Animator;

    .line 440
    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, p5, [F

    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 p1, 0x1

    aput p2, v3, p1

    .line 441
    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    aput-object p2, v1, v4

    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array p5, p5, [F

    aput p3, p5, v4

    aput p4, p5, p1

    .line 442
    invoke-static {p0, p2, p5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    aput-object p0, v1, p1

    .line 440
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0
.end method

.method private createPanelContent()V
    .locals 10

    .line 186
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 192
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    .line 196
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    .line 197
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 198
    iget-object v2, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    const v2, 0x7f0d03de

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlices:Landroidx/recyclerview/widget/RecyclerView;

    .line 201
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    const v2, 0x7f0d0495

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mSeeMoreButton:Landroid/widget/Button;

    .line 202
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    const v2, 0x7f0d01cd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mDoneButton:Landroid/widget/Button;

    .line 203
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    const v2, 0x7f0d03df

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mTitleView:Landroid/widget/TextView;

    .line 204
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    const v2, 0x7f0d03dd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mPanelHeader:Landroid/widget/LinearLayout;

    .line 205
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    const v2, 0x7f0d0584

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mTitleIcon:Landroid/widget/ImageView;

    .line 206
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    const v2, 0x7f0d0583

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mTitleGroup:Landroid/widget/LinearLayout;

    .line 207
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    const v2, 0x7f0d0273

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mHeaderLayout:Landroid/widget/LinearLayout;

    .line 208
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    const v2, 0x7f0d0275

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mHeaderTitle:Landroid/widget/TextView;

    .line 209
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    const v2, 0x7f0d0274

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mHeaderSubtitle:Landroid/widget/TextView;

    .line 210
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    const v2, 0x7f0d022e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mFooterDivider:Landroid/view/View;

    .line 214
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlices:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 216
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "PANEL_CALLING_PACKAGE_NAME"

    .line 218
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 220
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v3

    .line 221
    invoke-virtual {v3}, Lcom/android/settings/overlay/FeatureFactory;->getPanelFeatureProvider()Lcom/android/settings/panel/PanelFeatureProvider;

    move-result-object v3

    .line 222
    invoke-interface {v3, v0, v1}, Lcom/android/settings/panel/PanelFeatureProvider;->getPanel(Landroid/content/Context;Landroid/os/Bundle;)Lcom/android/settings/panel/PanelContent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    if-nez v1, :cond_2

    .line 225
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    .line 229
    :cond_2
    new-instance v3, Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;

    invoke-direct {v3, p0}, Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;-><init>(Lcom/android/settings/panel/PanelFragment;)V

    invoke-interface {v1, v3}, Lcom/android/settings/panel/PanelContent;->registerCallback(Lcom/android/settings/panel/PanelContentCallback;)V

    .line 230
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    instance-of v1, v1, Landroidx/lifecycle/LifecycleObserver;

    if-eqz v1, :cond_3

    .line 231
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    check-cast v3, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v1, v3}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 234
    :cond_3
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mMetricsProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 236
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlices:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 238
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 241
    invoke-direct {p0}, Lcom/android/settings/panel/PanelFragment;->loadAllSlices()V

    .line 243
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    invoke-interface {v0}, Lcom/android/settings/panel/PanelContent;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    .line 244
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    invoke-interface {v1}, Lcom/android/settings/panel/PanelContent;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 245
    iget-object v3, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    invoke-interface {v3}, Lcom/android/settings/panel/PanelContent;->getSubTitle()Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v0, :cond_5

    if-eqz v3, :cond_4

    .line 247
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_4

    goto :goto_0

    .line 250
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/settings/panel/PanelFragment;->enableTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 248
    :cond_5
    :goto_0
    invoke-direct {p0, v0, v1, v3}, Lcom/android/settings/panel/PanelFragment;->enablePanelHeader(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 253
    :goto_1
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mFooterDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mSeeMoreButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/settings/panel/PanelFragment;->getSeeMoreListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/settings/panel/PanelFragment;->getCloseListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    invoke-interface {v0}, Lcom/android/settings/panel/PanelContent;->isCustomizedButtonUsed()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 259
    invoke-direct {p0}, Lcom/android/settings/panel/PanelFragment;->enableCustomizedButton()V

    goto :goto_2

    .line 260
    :cond_6
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    invoke-interface {v0}, Lcom/android/settings/panel/PanelContent;->getSeeMoreIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_7

    .line 262
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mSeeMoreButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 266
    :cond_7
    :goto_2
    iget-object v4, p0, Lcom/android/settings/panel/PanelFragment;->mMetricsProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    .line 269
    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v7

    const/4 v9, 0x0

    .line 266
    invoke-virtual/range {v4 .. v9}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    return-void
.end method

.method private enableCustomizedButton()V
    .locals 3

    .line 308
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    invoke-interface {v0}, Lcom/android/settings/panel/PanelContent;->getCustomizedButtonTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 309
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mSeeMoreButton:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 312
    :cond_0
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mSeeMoreButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 313
    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mSeeMoreButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private enablePanelHeader(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3

    .line 275
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mTitleView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelHeader:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mHeaderTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object p2, p0, Lcom/android/settings/panel/PanelFragment;->mHeaderSubtitle:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object p2, p0, Lcom/android/settings/panel/PanelFragment;->mHeaderSubtitle:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_1

    .line 282
    iget-object p2, p0, Lcom/android/settings/panel/PanelFragment;->mTitleGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 283
    iget-object p2, p0, Lcom/android/settings/panel/PanelFragment;->mHeaderLayout:Landroid/widget/LinearLayout;

    const/4 p3, 0x3

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 284
    iget-object p2, p0, Lcom/android/settings/panel/PanelFragment;->mTitleIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroidx/core/graphics/drawable/IconCompat;->toIcon(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 285
    iget-object p1, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    invoke-interface {p1}, Lcom/android/settings/panel/PanelContent;->getHeaderIconIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 286
    iget-object p1, p0, Lcom/android/settings/panel/PanelFragment;->mTitleIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/panel/PanelFragment;->getHeaderIconListener()Landroid/view/View$OnClickListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mTitleIcon:Landroid/widget/ImageView;

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 290
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b02aa

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 292
    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mTitleIcon:Landroid/widget/ImageView;

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, p1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 295
    :cond_1
    iget-object p1, p0, Lcom/android/settings/panel/PanelFragment;->mTitleGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 296
    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mHeaderLayout:Landroid/widget/LinearLayout;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    :goto_0
    return-void
.end method

.method private enableTitle(Ljava/lang/CharSequence;)V
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelHeader:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    .line 304
    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$getCloseListener$5(Landroid/view/View;)V
    .locals 0

    const-string p1, "done"

    .line 484
    iput-object p1, p0, Lcom/android/settings/panel/PanelFragment;->mPanelClosedKey:Ljava/lang/String;

    .line 485
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$getHeaderIconListener$6(Landroid/view/View;)V
    .locals 0

    .line 492
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 493
    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    invoke-interface {p0}, Lcom/android/settings/panel/PanelContent;->getHeaderIconIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$getSeeMoreListener$4(Landroid/view/View;)V
    .locals 1

    const-string p1, "see_more"

    .line 470
    iput-object p1, p0, Lcom/android/settings/panel/PanelFragment;->mPanelClosedKey:Ljava/lang/String;

    .line 471
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 472
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    invoke-interface {v0}, Lcom/android/settings/panel/PanelContent;->isCustomizedButtonUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    invoke-interface {p0}, Lcom/android/settings/panel/PanelContent;->onClickCustomizedButton()V

    goto :goto_0

    .line 475
    :cond_0
    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    invoke-interface {p0}, Lcom/android/settings/panel/PanelContent;->getSeeMoreIntent()Landroid/content/Intent;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 477
    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$loadAllSlices$1(Landroid/net/Uri;ILjava/lang/Throwable;)V
    .locals 0

    .line 325
    invoke-direct {p0, p1}, Lcom/android/settings/panel/PanelFragment;->removeSliceLiveData(Landroid/net/Uri;)V

    .line 326
    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlicesLoaderCountdownLatch:Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;

    invoke-virtual {p0, p1}, Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;->markSliceLoaded(Landroid/net/Uri;)V

    return-void
.end method

.method private synthetic lambda$loadAllSlices$2(Landroid/net/Uri;)V
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlicesLoaderCountdownLatch:Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;

    invoke-virtual {v0, p1}, Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;->markSliceLoaded(Landroid/net/Uri;)V

    .line 363
    invoke-direct {p0}, Lcom/android/settings/panel/PanelFragment;->loadPanelWhenReady()V

    return-void
.end method

.method private synthetic lambda$loadAllSlices$3(Landroid/net/Uri;Landroidx/slice/Slice;)V
    .locals 3

    .line 334
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlicesLoaderCountdownLatch:Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;

    invoke-virtual {v0, p1}, Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;->isSliceLoaded(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 353
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p2}, Landroidx/slice/SliceMetadata;->from(Landroid/content/Context;Landroidx/slice/Slice;)Landroidx/slice/SliceMetadata;

    move-result-object v0

    if-eqz p2, :cond_3

    .line 354
    invoke-virtual {v0}, Landroidx/slice/SliceMetadata;->isErrorSlice()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 357
    :cond_1
    invoke-virtual {v0}, Landroidx/slice/SliceMetadata;->getLoadingState()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 358
    iget-object p2, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlicesLoaderCountdownLatch:Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;

    invoke-virtual {p2, p1}, Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;->markSliceLoaded(Landroid/net/Uri;)V

    goto :goto_1

    .line 360
    :cond_2
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .line 361
    new-instance v0, Lcom/android/settings/panel/PanelFragment-$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/panel/PanelFragment-$$ExternalSyntheticLambda6;-><init>(Lcom/android/settings/panel/PanelFragment;Landroid/net/Uri;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 355
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings/panel/PanelFragment;->removeSliceLiveData(Landroid/net/Uri;)V

    .line 356
    iget-object p2, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlicesLoaderCountdownLatch:Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;

    invoke-virtual {p2, p1}, Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;->markSliceLoaded(Landroid/net/Uri;)V

    .line 367
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/panel/PanelFragment;->loadPanelWhenReady()V

    return-void
.end method

.method private static synthetic lambda$new$0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private loadAllSlices()V
    .locals 5

    .line 318
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mSliceLiveData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 319
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    invoke-interface {v0}, Lcom/android/settings/panel/PanelContent;->getSlices()Ljava/util/List;

    move-result-object v0

    .line 320
    new-instance v1, Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlicesLoaderCountdownLatch:Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;

    .line 322
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 323
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/android/settings/panel/PanelFragment-$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/panel/PanelFragment-$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/panel/PanelFragment;Landroid/net/Uri;)V

    invoke-static {v2, v1, v3}, Landroidx/slice/widget/SliceLiveData;->fromUri(Landroid/content/Context;Landroid/net/Uri;Landroidx/slice/widget/SliceLiveData$OnErrorListener;)Landroidx/lifecycle/LiveData;

    move-result-object v2

    .line 330
    iget-object v3, p0, Lcom/android/settings/panel/PanelFragment;->mSliceLiveData:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v3

    new-instance v4, Lcom/android/settings/panel/PanelFragment-$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0, v1}, Lcom/android/settings/panel/PanelFragment-$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/panel/PanelFragment;Landroid/net/Uri;)V

    invoke-virtual {v2, v3, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private loadPanelWhenReady()V
    .locals 3

    .line 389
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlicesLoaderCountdownLatch:Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;

    invoke-virtual {v0}, Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;->isPanelReadyToLoad()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    new-instance v0, Lcom/android/settings/panel/PanelSlicesAdapter;

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mSliceLiveData:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    .line 391
    invoke-interface {v2}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/panel/PanelSlicesAdapter;-><init>(Lcom/android/settings/panel/PanelFragment;Ljava/util/Map;I)V

    iput-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mAdapter:Lcom/android/settings/panel/PanelSlicesAdapter;

    .line 392
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlices:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 393
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlices:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 394
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 395
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlices:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 397
    new-instance v0, Lcom/google/android/setupdesign/DividerItemDecoration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/setupdesign/DividerItemDecoration;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 399
    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/DividerItemDecoration;->setDividerCondition(I)V

    .line 400
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlices:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 401
    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlices:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_0
    return-void
.end method

.method private removeSliceLiveData(Landroid/net/Uri;)V
    .locals 2

    .line 374
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f01005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 373
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 376
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mSliceLiveData:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method getCloseListener()Landroid/view/View$OnClickListener;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 483
    new-instance v0, Lcom/android/settings/panel/PanelFragment-$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/panel/PanelFragment-$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/panel/PanelFragment;)V

    return-object v0
.end method

.method getHeaderIconListener()Landroid/view/View$OnClickListener;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 491
    new-instance v0, Lcom/android/settings/panel/PanelFragment-$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/settings/panel/PanelFragment-$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/panel/PanelFragment;)V

    return-object v0
.end method

.method getPanelViewType()I
    .locals 0

    .line 498
    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    invoke-interface {p0}, Lcom/android/settings/panel/PanelContent;->getViewType()I

    move-result p0

    return p0
.end method

.method getSeeMoreListener()Landroid/view/View$OnClickListener;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 469
    new-instance v0, Lcom/android/settings/panel/PanelFragment-$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/panel/PanelFragment-$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/panel/PanelFragment;)V

    return-object v0
.end method

.method isPanelCreating()Z
    .locals 0

    .line 182
    iget-boolean p0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelCreating:Z

    return p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f060170

    const/4 v0, 0x0

    .line 144
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/panel/PanelFragment;->mPanelLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 146
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 147
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b02ab

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/panel/PanelFragment;->mMaxHeight:I

    const/4 p1, 0x1

    .line 148
    iput-boolean p1, p0, Lcom/android/settings/panel/PanelFragment;->mPanelCreating:Z

    .line 149
    invoke-direct {p0}, Lcom/android/settings/panel/PanelFragment;->createPanelContent()V

    .line 150
    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroyView()V
    .locals 7

    .line 448
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 450
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelClosedKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "others"

    .line 451
    iput-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelClosedKey:Ljava/lang/String;

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 455
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mPanelLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    if-eqz v0, :cond_2

    .line 458
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mMetricsProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 461
    invoke-interface {v0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/panel/PanelFragment;->mPanelClosedKey:Ljava/lang/String;

    const/4 v6, 0x0

    .line 458
    invoke-virtual/range {v1 .. v6}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    :cond_2
    return-void
.end method

.method updatePanelWithAnimation()V
    .locals 7

    const/4 v0, 0x1

    .line 162
    iput-boolean v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelCreating:Z

    .line 163
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    const v1, 0x7f0d03dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    .line 165
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v3, v0

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/16 v6, 0xc8

    .line 164
    invoke-static/range {v1 .. v6}, Lcom/android/settings/panel/PanelFragment;->buildAnimatorSet(Landroid/view/View;FFFFI)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 169
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 170
    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 171
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 172
    new-instance v1, Lcom/android/settings/panel/PanelFragment$3;

    invoke-direct {v1, p0}, Lcom/android/settings/panel/PanelFragment$3;-><init>(Lcom/android/settings/panel/PanelFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 178
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
