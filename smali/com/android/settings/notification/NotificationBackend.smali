.class public Lcom/android/settings/notification/NotificationBackend;
.super Ljava/lang/Object;
.source "NotificationBackend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/NotificationBackend$AppRow;,
        Lcom/android/settings/notification/NotificationBackend$Row;,
        Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;
    }
.end annotation


# static fields
.field static sINM:Landroid/app/INotificationManager;

.field static sUsageStatsManager:Landroid/app/usage/IUsageStatsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "usagestats"

    .line 71
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 70
    invoke-static {v0}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/NotificationBackend;->sUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    const-string v0, "notification"

    .line 74
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 73
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private calculateAvgSentCounts(Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 516
    iget p0, p1, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;->sentCount:I

    int-to-float p0, p0

    const/high16 v0, 0x40e00000    # 7.0f

    div-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, p1, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;->avgSentDaily:I

    .line 517
    iget p0, p1, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;->sentCount:I

    const/4 v0, 0x7

    if-ge p0, v0, :cond_0

    .line 518
    iput p0, p1, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;->avgSentWeekly:I

    :cond_0
    return-void
.end method

.method public static getSentSummary(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;Z)Ljava/lang/CharSequence;
    .locals 5

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_2

    .line 499
    iget-wide v1, p1, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;->lastSent:J

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-nez p2, :cond_1

    const p1, 0x7f040d6d

    .line 500
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 503
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide p1, p1, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;->lastSent:J

    sub-long/2addr v1, p1

    long-to-double p1, v1

    .line 502
    invoke-static {p0, p1, p2, v0}, Lcom/android/settingslib/utils/StringUtil;->formatRelativeTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 505
    :cond_2
    iget p2, p1, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;->avgSentDaily:I

    const/4 v1, 0x0

    if-lez p2, :cond_3

    .line 506
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f120037

    iget p1, p1, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;->avgSentDaily:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 507
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 506
    invoke-virtual {p0, p2, p1, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 509
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f120038

    iget p1, p1, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;->avgSentWeekly:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 510
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 509
    invoke-virtual {p0, p2, p1, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static markAppRowWithBlockables([Ljava/lang/String;Lcom/android/settings/notification/NotificationBackend$AppRow;Ljava/lang/String;)V
    .locals 4

    if-eqz p0, :cond_3

    .line 126
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 128
    aget-object v2, p0, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, ":"

    .line 131
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 134
    :cond_1
    aget-object v2, p0, v1

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    .line 135
    iput-boolean v2, p1, Lcom/android/settings/notification/NotificationBackend$AppRow;->lockedImportance:Z

    iput-boolean v2, p1, Lcom/android/settings/notification/NotificationBackend$AppRow;->systemApp:Z

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public canShowBadge(Ljava/lang/String;I)Z
    .locals 0

    .line 183
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->canShowBadge(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 185
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public createConversationNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;Ljava/lang/String;)V
    .locals 0

    .line 549
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/app/INotificationManager;->createConversationNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 551
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public getAllowedNotificationAssistant()Landroid/content/ComponentName;
    .locals 2

    .line 525
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0}, Landroid/app/INotificationManager;->getAllowedNotificationAssistant()Landroid/content/ComponentName;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "NotificationBackend"

    const-string v1, "Error calling NoMan"

    .line 527
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBlockedChannelCount(Ljava/lang/String;I)I
    .locals 0

    .line 350
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->getBlockedChannelCount(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 352
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getBubblePreference(Ljava/lang/String;I)I
    .locals 0

    .line 202
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->getBubblePreferenceForPackage(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 204
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    return p0
.end method

.method public getChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;
    .locals 6

    const/4 p0, 0x0

    if-nez p3, :cond_0

    return-object p0

    .line 229
    :cond_0
    :try_start_0
    sget-object v0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    const/4 v5, 0x1

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/app/INotificationManager;->getNotificationChannelForPackage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    const-string p2, "NotificationBackend"

    const-string p3, "Error calling NoMan"

    .line 231
    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p0
.end method

.method public getChannelCount(Ljava/lang/String;I)I
    .locals 1

    const/4 p0, 0x0

    .line 368
    :try_start_0
    sget-object v0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v0, p1, p2, p0}, Landroid/app/INotificationManager;->getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    const-string p2, "NotificationBackend"

    const-string v0, "Error calling NoMan"

    .line 370
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p0
.end method

.method public getConversationDrawable(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;Ljava/lang/String;IZ)Landroid/graphics/drawable/Drawable;
    .locals 6

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 576
    :cond_0
    new-instance p0, Lcom/android/settingslib/notification/ConversationIconFactory;

    const-class v0, Landroid/content/pm/LauncherApps;

    .line 577
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/pm/LauncherApps;

    .line 578
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v0, 0x0

    .line 579
    invoke-static {p1, v0}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;Z)Landroid/util/IconDrawableFactory;

    move-result-object v4

    .line 580
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/notification/ConversationIconFactory;-><init>(Landroid/content/Context;Landroid/content/pm/LauncherApps;Landroid/content/pm/PackageManager;Landroid/util/IconDrawableFactory;I)V

    .line 582
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/settingslib/notification/ConversationIconFactory;->getConversationDrawable(Landroid/content/pm/ShortcutInfo;Ljava/lang/String;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getConversationInfo(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/ShortcutInfo;
    .locals 1

    .line 556
    const-class p0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/LauncherApps;

    .line 558
    new-instance p1, Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-direct {p1}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    .line 559
    invoke-virtual {p1, p2}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setPackage(Ljava/lang/String;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    move-result-object p1

    const/16 p2, 0x411

    .line 560
    invoke-virtual {p1, p2}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setQueryFlags(I)Landroid/content/pm/LauncherApps$ShortcutQuery;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p4, p2, v0

    .line 562
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setShortcutIds(Ljava/util/List;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    move-result-object p1

    .line 564
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    .line 563
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/LauncherApps;->getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 565
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 566
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ShortcutInfo;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getConversations(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/service/notification/ConversationChannelWrapper;",
            ">;"
        }
    .end annotation

    .line 259
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->getConversationsForPackage(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 261
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public getConversations(Z)Landroid/content/pm/ParceledListSlice;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/service/notification/ConversationChannelWrapper;",
            ">;"
        }
    .end annotation

    .line 268
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->getConversations(Z)Landroid/content/pm/ParceledListSlice;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string v0, "Error calling NoMan"

    .line 270
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public getDeletedChannelCount(Ljava/lang/String;I)I
    .locals 0

    .line 341
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->getDeletedChannelCount(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 343
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getGroup(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannelGroup;
    .locals 1

    const/4 p0, 0x0

    if-nez p3, :cond_0

    return-object p0

    .line 241
    :cond_0
    :try_start_0
    sget-object v0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v0, p3, p1, p2}, Landroid/app/INotificationManager;->getNotificationChannelGroupForPackage(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    const-string p2, "NotificationBackend"

    const-string p3, "Error calling NoMan"

    .line 243
    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p0
.end method

.method public getGroups(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    .line 250
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Landroid/app/INotificationManager;->getNotificationChannelGroupsForPackage(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 252
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public getListenerFilter(Landroid/content/ComponentName;I)Landroid/service/notification/NotificationListenerFilter;
    .locals 0

    .line 601
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->getListenerFilter(Landroid/content/ComponentName;I)Landroid/service/notification/NotificationListenerFilter;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 603
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    goto :goto_1

    .line 605
    :cond_0
    new-instance p0, Landroid/service/notification/NotificationListenerFilter;

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerFilter;-><init>()V

    :goto_1
    return-object p0
.end method

.method public getNotificationChannelsBypassingDnd(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .line 316
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->getNotificationChannelsBypassingDnd(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 318
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 319
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationHistory(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationHistory;
    .locals 0

    .line 442
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->getNotificationHistory(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationHistory;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 444
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 446
    new-instance p0, Landroid/app/NotificationHistory;

    invoke-direct {p0}, Landroid/app/NotificationHistory;-><init>()V

    return-object p0
.end method

.method public getNotificationsBanned(Ljava/lang/String;I)Z
    .locals 0

    .line 157
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 160
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public hasSentValidMsg(Ljava/lang/String;I)Z
    .locals 0

    .line 277
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->hasSentValidMsg(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 279
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public hasUserDemotedInvalidMsgApp(Ljava/lang/String;I)Z
    .locals 0

    .line 295
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->hasUserDemotedInvalidMsgApp(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 297
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isBlockable(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z
    .locals 2

    .line 98
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/notification/NotificationBackend;->getNotificationsBanned(Ljava/lang/String;I)Z

    move-result v0

    .line 99
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/notification/NotificationBackend;->isSystemApp(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isInInvalidMsgState(Ljava/lang/String;I)Z
    .locals 0

    .line 286
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->isInInvalidMsgState(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 288
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isNotificationListenerAccessGranted(Landroid/content/ComponentName;)Z
    .locals 1

    .line 618
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->isNotificationListenerAccessGranted(Landroid/content/ComponentName;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string v0, "Error calling NoMan"

    .line 620
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isSystemApp(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z
    .locals 8

    .line 143
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v1, 0x40

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 145
    const-class p2, Landroid/app/role/RoleManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Landroid/app/role/RoleManager;

    .line 146
    new-instance p2, Lcom/android/settings/notification/NotificationBackend$AppRow;

    invoke-direct {p2}, Lcom/android/settings/notification/NotificationBackend$AppRow;-><init>()V

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move-object v2, p0

    move-object v3, p1

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/notification/NotificationBackend;->recordCanBeBlocked(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/role/RoleManager;Landroid/content/pm/PackageInfo;Lcom/android/settings/notification/NotificationBackend$AppRow;)V

    .line 148
    iget-boolean p0, p2, Lcom/android/settings/notification/NotificationBackend$AppRow;->systemApp:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 150
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public loadAppRow(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/role/RoleManager;Landroid/content/pm/PackageInfo;)Lcom/android/settings/notification/NotificationBackend$AppRow;
    .locals 7

    .line 105
    iget-object v0, p4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/settings/notification/NotificationBackend;->loadAppRow(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/notification/NotificationBackend$AppRow;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, v0

    .line 106
    invoke-virtual/range {v1 .. v6}, Lcom/android/settings/notification/NotificationBackend;->recordCanBeBlocked(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/role/RoleManager;Landroid/content/pm/PackageInfo;Lcom/android/settings/notification/NotificationBackend$AppRow;)V

    return-object v0
.end method

.method public loadAppRow(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/notification/NotificationBackend$AppRow;
    .locals 3

    .line 77
    new-instance v0, Lcom/android/settings/notification/NotificationBackend$AppRow;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend$AppRow;-><init>()V

    .line 78
    iget-object v1, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    .line 79
    iget v1, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    .line 81
    :try_start_0
    invoke-virtual {p3, p2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->label:Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error loading application label for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotificationBackend"

    invoke-static {v2, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    iget-object p2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iput-object p2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->label:Ljava/lang/CharSequence;

    .line 86
    :goto_0
    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    .line 87
    iget-object p2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget p3, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {p0, p2, p3}, Lcom/android/settings/notification/NotificationBackend;->getNotificationsBanned(Ljava/lang/String;I)Z

    move-result p2

    iput-boolean p2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    .line 88
    iget-object p2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget p3, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {p0, p2, p3}, Lcom/android/settings/notification/NotificationBackend;->canShowBadge(Ljava/lang/String;I)Z

    move-result p2

    iput-boolean p2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->showBadge:Z

    .line 89
    iget-object p2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget p3, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {p0, p2, p3}, Lcom/android/settings/notification/NotificationBackend;->getBubblePreference(Ljava/lang/String;I)I

    move-result p2

    iput p2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->bubblePreference:I

    .line 90
    iget p2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    iput p2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->userId:I

    .line 91
    iget-object p2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget p3, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {p0, p2, p3}, Lcom/android/settings/notification/NotificationBackend;->getBlockedChannelCount(Ljava/lang/String;I)I

    move-result p2

    iput p2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->blockedChannelCount:I

    .line 92
    iget-object p2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget p3, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {p0, p2, p3}, Lcom/android/settings/notification/NotificationBackend;->getChannelCount(Ljava/lang/String;I)I

    move-result p2

    iput p2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->channelCount:I

    .line 93
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/notification/NotificationBackend;->recordAggregatedUsageEvents(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend$AppRow;)V

    return-object v0
.end method

.method public onlyHasDefaultChannel(Ljava/lang/String;I)Z
    .locals 0

    .line 359
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 361
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method protected recordAggregatedUsageEvents(Landroid/app/usage/UsageEvents;Lcom/android/settings/notification/NotificationBackend$AppRow;)V
    .locals 7

    .line 463
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p2, Lcom/android/settings/notification/NotificationBackend$AppRow;->sentByChannel:Ljava/util/Map;

    .line 464
    new-instance v0, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;-><init>()V

    iput-object v0, p2, Lcom/android/settings/notification/NotificationBackend$AppRow;->sentByApp:Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;

    if-eqz p1, :cond_4

    .line 466
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 467
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 468
    invoke-virtual {p1, v0}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    .line 470
    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 471
    iget-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 473
    iget-object v2, p2, Lcom/android/settings/notification/NotificationBackend$AppRow;->sentByChannel:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;

    if-nez v2, :cond_1

    .line 475
    new-instance v2, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;

    invoke-direct {v2}, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;-><init>()V

    .line 476
    iget-object v3, p2, Lcom/android/settings/notification/NotificationBackend$AppRow;->sentByChannel:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    :cond_1
    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v3

    iget-wide v5, v2, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;->lastSent:J

    cmp-long v1, v3, v5

    if-lez v1, :cond_2

    .line 479
    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;->lastSent:J

    .line 480
    iget-object v1, p2, Lcom/android/settings/notification/NotificationBackend$AppRow;->sentByApp:Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;

    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;->lastSent:J

    .line 482
    :cond_2
    iget v1, v2, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;->sentCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v2, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;->sentCount:I

    .line 483
    iget-object v1, p2, Lcom/android/settings/notification/NotificationBackend$AppRow;->sentByApp:Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;

    iget v3, v1, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;->sentCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;->sentCount:I

    .line 484
    invoke-direct {p0, v2}, Lcom/android/settings/notification/NotificationBackend;->calculateAvgSentCounts(Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;)V

    goto :goto_0

    .line 489
    :cond_3
    iget-object p1, p2, Lcom/android/settings/notification/NotificationBackend$AppRow;->sentByApp:Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;

    invoke-direct {p0, p1}, Lcom/android/settings/notification/NotificationBackend;->calculateAvgSentCounts(Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;)V

    :cond_4
    return-void
.end method

.method protected recordAggregatedUsageEvents(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend$AppRow;)V
    .locals 8

    .line 450
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v0, 0x240c8400

    sub-long v1, v3, v0

    .line 454
    :try_start_0
    sget-object v0, Lcom/android/settings/notification/NotificationBackend;->sUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    iget v5, p2, Lcom/android/settings/notification/NotificationBackend$AppRow;->userId:I

    iget-object v6, p2, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    .line 455
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 454
    invoke-interface/range {v0 .. v7}, Landroid/app/usage/IUsageStatsManager;->queryEventsForPackageForUser(JJILjava/lang/String;Ljava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 457
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    .line 459
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/notification/NotificationBackend;->recordAggregatedUsageEvents(Landroid/app/usage/UsageEvents;Lcom/android/settings/notification/NotificationBackend$AppRow;)V

    return-void
.end method

.method recordCanBeBlocked(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/role/RoleManager;Landroid/content/pm/PackageInfo;Lcom/android/settings/notification/NotificationBackend$AppRow;)V
    .locals 0

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p2, p4}, Lcom/android/settingslib/Utils;->isSystemPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result p0

    iput-boolean p0, p5, Lcom/android/settings/notification/NotificationBackend$AppRow;->systemApp:Z

    .line 113
    iget-object p0, p4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, p0}, Landroid/app/role/RoleManager;->getHeldRolesFromController(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    const-string p2, "android.app.role.DIALER"

    .line 114
    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "android.app.role.EMERGENCY"

    .line 115
    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    .line 116
    iput-boolean p0, p5, Lcom/android/settings/notification/NotificationBackend$AppRow;->systemApp:Z

    .line 118
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x1070062

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 120
    iget-object p1, p4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, p5, p1}, Lcom/android/settings/notification/NotificationBackend;->markAppRowWithBlockables([Ljava/lang/String;Lcom/android/settings/notification/NotificationBackend$AppRow;Ljava/lang/String;)V

    return-void
.end method

.method public resetNotificationImportance()V
    .locals 2

    .line 592
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0}, Landroid/app/INotificationManager;->unlockAllNotificationChannels()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "NotificationBackend"

    const-string v1, "Error calling NoMan"

    .line 594
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setAllowBubbles(Ljava/lang/String;II)Z
    .locals 0

    .line 211
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2, p3}, Landroid/app/INotificationManager;->setBubblesAllowed(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 214
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setHideSilentStatusIcons(Z)V
    .locals 1

    .line 404
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->setHideSilentStatusIcons(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string v0, "Error calling NoMan"

    .line 406
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setInvalidMsgAppDemoted(Ljava/lang/String;IZ)V
    .locals 0

    .line 304
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2, p3}, Landroid/app/INotificationManager;->setInvalidMsgAppDemoted(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 306
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setListenerFilter(Landroid/content/ComponentName;ILandroid/service/notification/NotificationListenerFilter;)V
    .locals 0

    .line 610
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2, p3}, Landroid/app/INotificationManager;->setListenerFilter(Landroid/content/ComponentName;ILandroid/service/notification/NotificationListenerFilter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 612
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setNotificationAssistantGranted(Landroid/content/ComponentName;)Z
    .locals 2

    const/4 p0, 0x0

    .line 534
    :try_start_0
    sget-object v0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/app/INotificationManager;->setNotificationAssistantAccessGranted(Landroid/content/ComponentName;Z)V

    if-nez p1, :cond_1

    .line 536
    sget-object p1, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p1}, Landroid/app/INotificationManager;->getAllowedNotificationAssistant()Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_0

    move p0, v1

    :cond_0
    return p0

    .line 538
    :cond_1
    sget-object v0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v0}, Landroid/app/INotificationManager;->getAllowedNotificationAssistant()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    const-string v0, "NotificationBackend"

    const-string v1, "Error calling NoMan"

    .line 541
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p0
.end method

.method public setNotificationsEnabledForPackage(Ljava/lang/String;IZ)Z
    .locals 3

    const/4 v0, 0x0

    .line 167
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/notification/NotificationBackend;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "miscellaneous"

    const/4 v2, 0x0

    .line 169
    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/android/settings/notification/NotificationBackend;->getChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v1

    if-eqz p3, :cond_0

    const/16 v2, -0x3e8

    goto :goto_0

    :cond_0
    move v2, v0

    .line 170
    :goto_0
    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 171
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/settings/notification/NotificationBackend;->updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    .line 173
    :cond_1
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2, p3}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 176
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public setShowBadge(Ljava/lang/String;IZ)Z
    .locals 0

    .line 192
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2, p3}, Landroid/app/INotificationManager;->setShowBadge(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 195
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public shouldHideSilentStatusBarIcons(Landroid/content/Context;)Z
    .locals 1

    .line 395
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->shouldHideSilentStatusIcons(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string v0, "Error calling NoMan"

    .line 397
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public showSilentInStatusBar(Ljava/lang/String;)Z
    .locals 1

    .line 433
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->shouldHideSilentStatusIcons(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string v0, "Error calling NoMan"

    .line 435
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V
    .locals 0

    .line 325
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2, p3}, Landroid/app/INotificationManager;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 327
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public updateChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;)V
    .locals 0

    .line 333
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2, p3}, Landroid/app/INotificationManager;->updateNotificationChannelGroupForPackage(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 335
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
