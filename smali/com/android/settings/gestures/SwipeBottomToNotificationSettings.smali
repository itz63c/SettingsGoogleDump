.class public Lcom/android/settings/gestures/SwipeBottomToNotificationSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SwipeBottomToNotificationSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Lcom/android/settings/gestures/SwipeBottomToNotificationSettings$1;

    const v1, 0x7f1500d7

    invoke-direct {v0, v1}, Lcom/android/settings/gestures/SwipeBottomToNotificationSettings$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/gestures/SwipeBottomToNotificationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SwipeBottomToNotificationSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x736

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1500d7

    return p0
.end method