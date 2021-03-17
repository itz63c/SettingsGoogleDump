.class public Lcom/android/settings/notification/history/NotificationSbnViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "NotificationSbnViewHolder.java"


# instance fields
.field private final mDivider:Landroid/view/View;

.field private final mIcon:Landroid/widget/ImageView;

.field private final mPkgName:Landroid/widget/TextView;

.field private final mProfileBadge:Landroid/widget/ImageView;

.field private final mSummary:Landroid/widget/TextView;

.field private final mTime:Landroid/widget/DateTimeView;

.field private final mTitle:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$A-DCYeekPGpIhvTj6V-HIwW6F-g(Lcom/android/settings/notification/history/NotificationSbnViewHolder;Lcom/android/internal/logging/UiEventLogger;ZILjava/lang/String;Lcom/android/internal/logging/InstanceId;ILandroid/app/PendingIntent;ZLandroid/content/Intent;ILandroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p11}, Lcom/android/settings/notification/history/NotificationSbnViewHolder;->lambda$addOnClick$0(Lcom/android/internal/logging/UiEventLogger;ZILjava/lang/String;Lcom/android/internal/logging/InstanceId;ILandroid/app/PendingIntent;ZLandroid/content/Intent;ILandroid/view/View;)V

    return-void
.end method

.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 52
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0d0409

    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/notification/history/NotificationSbnViewHolder;->mPkgName:Landroid/widget/TextView;

    const v0, 0x7f0d0293

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/notification/history/NotificationSbnViewHolder;->mIcon:Landroid/widget/ImageView;

    const v0, 0x7f0d057e

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/DateTimeView;

    iput-object v0, p0, Lcom/android/settings/notification/history/NotificationSbnViewHolder;->mTime:Landroid/widget/DateTimeView;

    const v0, 0x7f0d0580

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/notification/history/NotificationSbnViewHolder;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0d0565

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/notification/history/NotificationSbnViewHolder;->mSummary:Landroid/widget/TextView;

    const v0, 0x7f0d0427

    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/notification/history/NotificationSbnViewHolder;->mProfileBadge:Landroid/widget/ImageView;

    const v0, 0x7f0d01c6

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationSbnViewHolder;->mDivider:Landroid/view/View;

    return-void
.end method

.method private synthetic lambda$addOnClick$0(Lcom/android/internal/logging/UiEventLogger;ZILjava/lang/String;Lcom/android/internal/logging/InstanceId;ILandroid/app/PendingIntent;ZLandroid/content/Intent;ILandroid/view/View;)V
    .locals 8

    move-object/from16 v0, p9

    if-eqz p2, :cond_0

    .line 108
    sget-object v1, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;->NOTIFICATION_HISTORY_SNOOZED_ITEM_CLICK:Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    goto :goto_0

    .line 110
    :cond_0
    sget-object v1, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;->NOTIFICATION_HISTORY_RECENT_ITEM_CLICK:Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    :goto_0
    move-object v3, v1

    move-object v2, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    .line 105
    invoke-interface/range {v2 .. v7}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceIdAndPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;I)V

    const-string v1, "SbnViewHolder"

    if-eqz p7, :cond_1

    if-eqz p8, :cond_1

    .line 114
    :try_start_0
    invoke-virtual {p7}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v0

    const-string v0, "Could not launch"

    .line 116
    invoke-static {v1, v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    const/high16 v2, 0x10000000

    .line 119
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object v2, p0

    .line 121
    :try_start_1
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static/range {p10 .. p10}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "no launch activity"

    .line 123
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method addOnClick(ILjava/lang/String;IILandroid/app/PendingIntent;Lcom/android/internal/logging/InstanceId;ZLcom/android/internal/logging/UiEventLogger;)V
    .locals 15

    move-object v12, p0

    .line 98
    iget-object v0, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object/from16 v5, p2

    .line 99
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 100
    iget-object v1, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 101
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual/range {p5 .. p5}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x24000000

    .line 100
    invoke-static {v1, v0, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    move v9, v0

    if-nez v9, :cond_1

    if-eqz v10, :cond_2

    .line 104
    :cond_1
    iget-object v13, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v14, Lcom/android/settings/notification/history/NotificationSbnViewHolder-$$ExternalSyntheticLambda0;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p8

    move/from16 v3, p7

    move/from16 v4, p3

    move-object/from16 v5, p2

    move-object/from16 v6, p6

    move/from16 v7, p1

    move-object/from16 v8, p5

    move/from16 v11, p4

    invoke-direct/range {v0 .. v11}, Lcom/android/settings/notification/history/NotificationSbnViewHolder-$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/history/NotificationSbnViewHolder;Lcom/android/internal/logging/UiEventLogger;ZILjava/lang/String;Lcom/android/internal/logging/InstanceId;ILandroid/app/PendingIntent;ZLandroid/content/Intent;I)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/android/settings/notification/history/NotificationSbnViewHolder$1;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/history/NotificationSbnViewHolder$1;-><init>(Lcom/android/settings/notification/history/NotificationSbnViewHolder;)V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    :cond_2
    return-void
.end method

.method setDividerVisible(Z)V
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationSbnViewHolder;->mDivider:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationSbnViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method setPackageLabel(Ljava/lang/String;)V
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationSbnViewHolder;->mPkgName:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method setPostedTime(J)V
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationSbnViewHolder;->mTime:Landroid/widget/DateTimeView;

    invoke-virtual {p0, p1, p2}, Landroid/widget/DateTimeView;->setTime(J)V

    return-void
.end method

.method setProfileBadge(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationSbnViewHolder;->mProfileBadge:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationSbnViewHolder;->mProfileBadge:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method setSummary(Ljava/lang/CharSequence;)V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationSbnViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationSbnViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 71
    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationSbnViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
