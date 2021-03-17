.class Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;
.super Ljava/lang/Object;
.source "PanelFragment.java"

# interfaces
.implements Lcom/android/settings/panel/PanelContentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/panel/PanelFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalPanelCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/panel/PanelFragment;


# direct methods
.method public static synthetic $r8$lambda$6A8Pmd189I6IxAdJ_i1Gls3iqOE(Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;->lambda$onCustomizedButtonStateChanged$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$Ht34jFd6n2oWApz-a0QF8Xk0sMg(Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;->lambda$onHeaderChanged$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$e-Rq3eTjat_s_eWOoiKtVggvU2M(Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;->lambda$onTitleChanged$2()V

    return-void
.end method

.method constructor <init>(Lcom/android/settings/panel/PanelFragment;)V
    .locals 0

    .line 501
    iput-object p1, p0, Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;->this$0:Lcom/android/settings/panel/PanelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCustomizedButtonStateChanged$0()V
    .locals 0

    .line 506
    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;->this$0:Lcom/android/settings/panel/PanelFragment;

    invoke-static {p0}, Lcom/android/settings/panel/PanelFragment;->access$900(Lcom/android/settings/panel/PanelFragment;)V

    return-void
.end method

.method private synthetic lambda$onHeaderChanged$1()V
    .locals 3

    .line 513
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;->this$0:Lcom/android/settings/panel/PanelFragment;

    invoke-static {v0}, Lcom/android/settings/panel/PanelFragment;->access$600(Lcom/android/settings/panel/PanelFragment;)Lcom/android/settings/panel/PanelContent;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/settings/panel/PanelContent;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;->this$0:Lcom/android/settings/panel/PanelFragment;

    invoke-static {v2}, Lcom/android/settings/panel/PanelFragment;->access$600(Lcom/android/settings/panel/PanelFragment;)Lcom/android/settings/panel/PanelContent;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/settings/panel/PanelContent;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;->this$0:Lcom/android/settings/panel/PanelFragment;

    invoke-static {p0}, Lcom/android/settings/panel/PanelFragment;->access$600(Lcom/android/settings/panel/PanelFragment;)Lcom/android/settings/panel/PanelContent;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settings/panel/PanelContent;->getSubTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {v0, v1, v2, p0}, Lcom/android/settings/panel/PanelFragment;->access$800(Lcom/android/settings/panel/PanelFragment;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$onTitleChanged$2()V
    .locals 1

    .line 526
    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;->this$0:Lcom/android/settings/panel/PanelFragment;

    invoke-static {p0}, Lcom/android/settings/panel/PanelFragment;->access$600(Lcom/android/settings/panel/PanelFragment;)Lcom/android/settings/panel/PanelContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/panel/PanelContent;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/panel/PanelFragment;->access$700(Lcom/android/settings/panel/PanelFragment;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public forceClose()V
    .locals 2

    .line 519
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;->this$0:Lcom/android/settings/panel/PanelFragment;

    const-string v1, "others"

    invoke-static {v0, v1}, Lcom/android/settings/panel/PanelFragment;->access$502(Lcom/android/settings/panel/PanelFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 520
    invoke-virtual {p0}, Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method getFragmentActivity()Landroidx/fragment/app/FragmentActivity;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 532
    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;->this$0:Lcom/android/settings/panel/PanelFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    return-object p0
.end method

.method public onCustomizedButtonStateChanged()V
    .locals 1

    .line 505
    new-instance v0, Lcom/android/settings/panel/PanelFragment$LocalPanelCallback-$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/panel/PanelFragment$LocalPanelCallback-$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onHeaderChanged()V
    .locals 1

    .line 512
    new-instance v0, Lcom/android/settings/panel/PanelFragment$LocalPanelCallback-$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/panel/PanelFragment$LocalPanelCallback-$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTitleChanged()V
    .locals 1

    .line 525
    new-instance v0, Lcom/android/settings/panel/PanelFragment$LocalPanelCallback-$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/settings/panel/PanelFragment$LocalPanelCallback-$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
