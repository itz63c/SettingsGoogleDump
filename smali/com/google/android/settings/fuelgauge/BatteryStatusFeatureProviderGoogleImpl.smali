.class public Lcom/google/android/settings/fuelgauge/BatteryStatusFeatureProviderGoogleImpl;
.super Lcom/android/settings/fuelgauge/BatteryStatusFeatureProviderImpl;
.source "BatteryStatusFeatureProviderGoogleImpl.java"


# instance fields
.field private mAdaptiveChargingEnabledInSettings:Z

.field private mAdaptiveChargingManager:Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 28
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/BatteryStatusFeatureProviderImpl;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;

    invoke-direct {v0, p1}, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/settings/fuelgauge/BatteryStatusFeatureProviderGoogleImpl;->mAdaptiveChargingManager:Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;

    .line 32
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryStatusFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "adaptive_charging_enabled"

    .line 33
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lcom/google/android/settings/fuelgauge/BatteryStatusFeatureProviderGoogleImpl$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/settings/fuelgauge/BatteryStatusFeatureProviderGoogleImpl$1;-><init>(Lcom/google/android/settings/fuelgauge/BatteryStatusFeatureProviderGoogleImpl;Landroid/os/Handler;)V

    const/4 v2, 0x0

    .line 32
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 42
    invoke-direct {p0}, Lcom/google/android/settings/fuelgauge/BatteryStatusFeatureProviderGoogleImpl;->refreshAdaptiveChargingEnabled()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/settings/fuelgauge/BatteryStatusFeatureProviderGoogleImpl;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/google/android/settings/fuelgauge/BatteryStatusFeatureProviderGoogleImpl;->refreshAdaptiveChargingEnabled()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/settings/fuelgauge/BatteryStatusFeatureProviderGoogleImpl;)Landroid/content/Context;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryStatusFeatureProviderImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/settings/fuelgauge/BatteryStatusFeatureProviderGoogleImpl;)Landroid/content/Context;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryStatusFeatureProviderImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private refreshAdaptiveChargingEnabled()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/google/android/settings/fuelgauge/BatteryStatusFeatureProviderGoogleImpl;->mAdaptiveChargingManager:Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;

    invoke-virtual {v0}, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/settings/fuelgauge/BatteryStatusFeatureProviderGoogleImpl;->mAdaptiveChargingManager:Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;

    .line 47
    invoke-virtual {v0}, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/settings/fuelgauge/BatteryStatusFeatureProviderGoogleImpl;->mAdaptiveChargingEnabledInSettings:Z

    return-void
.end method


# virtual methods
.method public triggerBatteryStatusUpdate(Lcom/android/settings/fuelgauge/BatteryPreferenceController;Lcom/android/settings/fuelgauge/BatteryInfo;)Z
    .locals 2

    .line 53
    iget-boolean v0, p2, Lcom/android/settings/fuelgauge/BatteryInfo;->discharging:Z

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/android/settings/fuelgauge/BatteryUtils;->isBatteryDefenderOn(Lcom/android/settings/fuelgauge/BatteryInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/settings/fuelgauge/BatteryStatusFeatureProviderGoogleImpl;->mAdaptiveChargingEnabledInSettings:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/google/android/settings/fuelgauge/BatteryStatusFeatureProviderGoogleImpl;->mAdaptiveChargingManager:Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;

    new-instance v1, Lcom/google/android/settings/fuelgauge/BatteryStatusFeatureProviderGoogleImpl$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/settings/fuelgauge/BatteryStatusFeatureProviderGoogleImpl$2;-><init>(Lcom/google/android/settings/fuelgauge/BatteryStatusFeatureProviderGoogleImpl;Lcom/android/settings/fuelgauge/BatteryPreferenceController;Lcom/android/settings/fuelgauge/BatteryInfo;)V

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;->queryStatus(Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
