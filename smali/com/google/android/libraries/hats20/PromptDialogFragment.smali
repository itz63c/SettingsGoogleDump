.class public final Lcom/google/android/libraries/hats20/PromptDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "PromptDialogFragment.java"

# interfaces
.implements Lcom/google/android/libraries/hats20/PromptDialogDelegate$DialogFragmentInterface;


# instance fields
.field private final delegate:Lcom/google/android/libraries/hats20/PromptDialogDelegate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 59
    new-instance v0, Lcom/google/android/libraries/hats20/PromptDialogDelegate;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/hats20/PromptDialogDelegate;-><init>(Lcom/google/android/libraries/hats20/PromptDialogDelegate$DialogFragmentInterface;)V

    iput-object v0, p0, Lcom/google/android/libraries/hats20/PromptDialogFragment;->delegate:Lcom/google/android/libraries/hats20/PromptDialogDelegate;

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Lcom/google/android/libraries/hats20/model/SurveyController;Lcom/google/android/libraries/hats20/answer/AnswerBeacon;Ljava/lang/Integer;Ljava/lang/Integer;Z)Lcom/google/android/libraries/hats20/PromptDialogFragment;
    .locals 1

    .line 46
    new-instance v0, Lcom/google/android/libraries/hats20/PromptDialogFragment;

    invoke-direct {v0}, Lcom/google/android/libraries/hats20/PromptDialogFragment;-><init>()V

    .line 48
    invoke-static/range {p0 .. p5}, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->createArgs(Ljava/lang/String;Lcom/google/android/libraries/hats20/model/SurveyController;Lcom/google/android/libraries/hats20/answer/AnswerBeacon;Ljava/lang/Integer;Ljava/lang/Integer;Z)Landroid/os/Bundle;

    move-result-object p0

    .line 47
    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getActivity()Landroid/app/Activity;
    .locals 0

    .line 20
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/google/android/libraries/hats20/PromptDialogFragment;->delegate:Lcom/google/android/libraries/hats20/PromptDialogDelegate;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/google/android/libraries/hats20/PromptDialogFragment;->delegate:Lcom/google/android/libraries/hats20/PromptDialogDelegate;

    invoke-virtual {v0}, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->onDestroy()V

    .line 90
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 83
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 84
    iget-object p0, p0, Lcom/google/android/libraries/hats20/PromptDialogFragment;->delegate:Lcom/google/android/libraries/hats20/PromptDialogDelegate;

    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/google/android/libraries/hats20/PromptDialogFragment;->delegate:Lcom/google/android/libraries/hats20/PromptDialogDelegate;

    invoke-virtual {v0}, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->onResume()V

    .line 78
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 71
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 72
    iget-object p0, p0, Lcom/google/android/libraries/hats20/PromptDialogFragment;->delegate:Lcom/google/android/libraries/hats20/PromptDialogDelegate;

    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->onStart()V

    return-void
.end method
