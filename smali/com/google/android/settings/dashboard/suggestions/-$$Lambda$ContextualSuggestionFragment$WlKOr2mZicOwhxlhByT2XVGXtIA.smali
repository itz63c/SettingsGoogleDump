.class public final synthetic Lcom/google/android/settings/dashboard/suggestions/-$$Lambda$ContextualSuggestionFragment$WlKOr2mZicOwhxlhByT2XVGXtIA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/service/settings/suggestions/Suggestion;


# direct methods
.method public synthetic constructor <init>(Landroid/service/settings/suggestions/Suggestion;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/settings/dashboard/suggestions/-$$Lambda$ContextualSuggestionFragment$WlKOr2mZicOwhxlhByT2XVGXtIA;->f$0:Landroid/service/settings/suggestions/Suggestion;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/dashboard/suggestions/-$$Lambda$ContextualSuggestionFragment$WlKOr2mZicOwhxlhByT2XVGXtIA;->f$0:Landroid/service/settings/suggestions/Suggestion;

    invoke-static {p0, p1}, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->lambda$updateState$2(Landroid/service/settings/suggestions/Suggestion;Landroid/view/View;)V

    return-void
.end method
