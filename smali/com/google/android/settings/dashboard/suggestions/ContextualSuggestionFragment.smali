.class public Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "ContextualSuggestionFragment.java"

# interfaces
.implements Lcom/android/settingslib/suggestions/SuggestionController$ServiceConnectionListener;


# static fields
.field private static final BUTTON_RES_MAP:[Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mSuggestionController:Lcom/android/settingslib/suggestions/SuggestionController;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$WlKOr2mZicOwhxlhByT2XVGXtIA(Landroid/service/settings/suggestions/Suggestion;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->lambda$updateState$2(Landroid/service/settings/suggestions/Suggestion;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mcVPCHGkZnm8qSd3F_KzOAg8Ys4(Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->lambda$loadSuggestions$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$qgCu46CLOQvZEcmr7ijHXjge6Cg(Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->lambda$loadSuggestions$0(Ljava/util/List;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/util/Pair;

    .line 35
    new-instance v1, Landroid/util/Pair;

    const-string v2, "com.google.android.setupwizard"

    const-string v3, "Finish setup"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroid/util/Pair;

    const-string v2, "com.google.android.apps.tips"

    const-string v3, "Explore"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->BUTTON_RES_MAP:[Landroid/util/Pair;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    return-void
.end method

.method private getButtonText(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 151
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    .line 152
    sget-object p1, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->BUTTON_RES_MAP:[Landroid/util/Pair;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 153
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    iget-object p0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$loadSuggestions$0(Ljava/util/List;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->updateState(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$loadSuggestions$1()V
    .locals 4

    .line 99
    iget-object v0, p0, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->mSuggestionController:Lcom/android/settingslib/suggestions/SuggestionController;

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/suggestions/SuggestionController;->getSuggestions()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "null"

    goto :goto_0

    .line 105
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 106
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loaded suggests: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContextualSuggestFrag"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v1, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment-$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment-$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;Ljava/util/List;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$updateState$2(Landroid/service/settings/suggestions/Suggestion;Landroid/view/View;)V
    .locals 1

    .line 133
    :try_start_0
    invoke-virtual {p0}, Landroid/service/settings/suggestions/Suggestion;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to start suggestion "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/service/settings/suggestions/Suggestion;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContextualSuggestFrag"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private loadSuggestions()V
    .locals 1

    .line 98
    new-instance v0, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment-$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment-$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private resetSuggestion()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v1, 0x7f041043

    .line 143
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 145
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->mButton:Landroid/widget/Button;

    if-eqz p0, :cond_1

    const/16 v0, 0x8

    .line 146
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private updateState(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 113
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 118
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/settings/suggestions/Suggestion;

    .line 119
    invoke-virtual {p1}, Landroid/service/settings/suggestions/Suggestion;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->getButtonText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 121
    invoke-direct {p0}, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->resetSuggestion()V

    return-void

    .line 125
    :cond_1
    iget-object v2, p0, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->mTitle:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 126
    invoke-virtual {p1}, Landroid/service/settings/suggestions/Suggestion;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    :cond_2
    iget-object v2, p0, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->mButton:Landroid/widget/Button;

    if-eqz v2, :cond_3

    .line 129
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v1, p0, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->mButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 131
    iget-object p0, p0, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->mButton:Landroid/widget/Button;

    new-instance v0, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment-$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment-$$ExternalSyntheticLambda0;-><init>(Landroid/service/settings/suggestions/Suggestion;)V

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void

    .line 114
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->resetSuggestion()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x5de

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 49
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onAttach(Landroid/content/Context;)V

    .line 52
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getSuggestionFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    move-result-object v0

    .line 53
    invoke-interface {v0}, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;->getSuggestionServiceComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 54
    new-instance v1, Lcom/android/settingslib/suggestions/SuggestionController;

    invoke-direct {v1, p1, v0, p0}, Lcom/android/settingslib/suggestions/SuggestionController;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/settingslib/suggestions/SuggestionController$ServiceConnectionListener;)V

    iput-object v1, p0, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->mSuggestionController:Lcom/android/settingslib/suggestions/SuggestionController;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    const v0, 0x7f0d0539

    .line 62
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0d0537

    .line 63
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->mButton:Landroid/widget/Button;

    .line 64
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onServiceConnected()V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->loadSuggestions()V

    return-void
.end method

.method public onServiceDisconnected()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 69
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onStart()V

    .line 70
    iget-object p0, p0, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->mSuggestionController:Lcom/android/settingslib/suggestions/SuggestionController;

    if-eqz p0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/android/settingslib/suggestions/SuggestionController;->start()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->mSuggestionController:Lcom/android/settingslib/suggestions/SuggestionController;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Lcom/android/settingslib/suggestions/SuggestionController;->stop()V

    .line 80
    :cond_0
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onStop()V

    return-void
.end method
