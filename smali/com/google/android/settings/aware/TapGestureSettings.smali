.class public Lcom/google/android/settings/aware/TapGestureSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "TapGestureSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Lcom/google/android/settings/aware/TapGestureSettings$1;

    const v1, 0x7f1500dc

    invoke-direct {v0, v1}, Lcom/google/android/settings/aware/TapGestureSettings$1;-><init>(I)V

    sput-object v0, Lcom/google/android/settings/aware/TapGestureSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "TapGestureSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x6d7

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1500dc

    return p0
.end method