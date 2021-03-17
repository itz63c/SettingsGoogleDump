.class public final Lcom/google/android/settings/overlay/FeatureFactoryImpl;
.super Lcom/android/settings/overlay/FeatureFactoryImpl;
.source "FeatureFactoryImpl.java"


# instance fields
.field private mAccountFeatureProvider:Lcom/android/settings/accounts/AccountFeatureProvider;

.field private mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

.field private mAssistGestureFeatureProvider:Lcom/android/settings/gestures/AssistGestureFeatureProvider;

.field private mAwareFeatureProvider:Lcom/android/settings/aware/AwareFeatureProvider;

.field private mBatteryStatusFeatureProvider:Lcom/android/settings/fuelgauge/BatteryStatusFeatureProvider;

.field private mDockUpdaterFeatureProvider:Lcom/android/settings/overlay/DockUpdaterFeatureProvider;

.field private mFaceFeatureProvider:Lcom/android/settings/biometrics/face/FaceFeatureProvider;

.field private mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mPowerUsageProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

.field private mSearchFeatureProvider:Lcom/android/settings/search/SearchFeatureProvider;

.field private mSuggestionFeatureProvider:Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

.field private mSupportProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

.field private mSurveyFeatureProvider:Lcom/android/settings/overlay/SurveyFeatureProvider;

.field private mWifiTrackerLibProvider:Lcom/android/settings/wifi/WifiTrackerLibProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/settings/overlay/FeatureFactoryImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountFeatureProvider()Lcom/android/settings/accounts/AccountFeatureProvider;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mAccountFeatureProvider:Lcom/android/settings/accounts/AccountFeatureProvider;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Lcom/google/android/settings/accounts/AccountFeatureProviderGoogleImpl;

    invoke-direct {v0}, Lcom/google/android/settings/accounts/AccountFeatureProviderGoogleImpl;-><init>()V

    iput-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mAccountFeatureProvider:Lcom/android/settings/accounts/AccountFeatureProvider;

    .line 172
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mAccountFeatureProvider:Lcom/android/settings/accounts/AccountFeatureProvider;

    return-object p0
.end method

.method public getApplicationFeatureProvider(Landroid/content/Context;)Lcom/android/settings/applications/ApplicationFeatureProvider;
    .locals 4

    .line 56
    iget-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    if-nez v0, :cond_0

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 58
    new-instance v0, Lcom/google/android/settings/applications/ApplicationFeatureProviderGoogleImpl;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 60
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const-string v3, "device_policy"

    .line 61
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/android/settings/applications/ApplicationFeatureProviderGoogleImpl;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/IPackageManager;Landroid/app/admin/DevicePolicyManager;)V

    iput-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    .line 64
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    return-object p0
.end method

.method public getAssistGestureFeatureProvider()Lcom/android/settings/gestures/AssistGestureFeatureProvider;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mAssistGestureFeatureProvider:Lcom/android/settings/gestures/AssistGestureFeatureProvider;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Lcom/google/android/settings/gestures/assist/AssistGestureFeatureProviderGoogleImpl;

    invoke-direct {v0}, Lcom/google/android/settings/gestures/assist/AssistGestureFeatureProviderGoogleImpl;-><init>()V

    iput-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mAssistGestureFeatureProvider:Lcom/android/settings/gestures/AssistGestureFeatureProvider;

    .line 164
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mAssistGestureFeatureProvider:Lcom/android/settings/gestures/AssistGestureFeatureProvider;

    return-object p0
.end method

.method public getAwareFeatureProvider()Lcom/android/settings/aware/AwareFeatureProvider;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mAwareFeatureProvider:Lcom/android/settings/aware/AwareFeatureProvider;

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Lcom/google/android/settings/aware/AwareFeatureProviderGoogleImpl;

    invoke-direct {v0}, Lcom/google/android/settings/aware/AwareFeatureProviderGoogleImpl;-><init>()V

    iput-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mAwareFeatureProvider:Lcom/android/settings/aware/AwareFeatureProvider;

    .line 180
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mAwareFeatureProvider:Lcom/android/settings/aware/AwareFeatureProvider;

    return-object p0
.end method

.method public getBatteryStatusFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryStatusFeatureProvider;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mBatteryStatusFeatureProvider:Lcom/android/settings/fuelgauge/BatteryStatusFeatureProvider;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/google/android/settings/fuelgauge/BatteryStatusFeatureProviderGoogleImpl;

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/settings/fuelgauge/BatteryStatusFeatureProviderGoogleImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mBatteryStatusFeatureProvider:Lcom/android/settings/fuelgauge/BatteryStatusFeatureProvider;

    .line 102
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mBatteryStatusFeatureProvider:Lcom/android/settings/fuelgauge/BatteryStatusFeatureProvider;

    return-object p0
.end method

.method public getDockUpdaterFeatureProvider()Lcom/android/settings/overlay/DockUpdaterFeatureProvider;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mDockUpdaterFeatureProvider:Lcom/android/settings/overlay/DockUpdaterFeatureProvider;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/google/android/settings/connecteddevice/dock/DockUpdaterFeatureProviderGoogleImpl;

    invoke-direct {v0}, Lcom/google/android/settings/connecteddevice/dock/DockUpdaterFeatureProviderGoogleImpl;-><init>()V

    iput-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mDockUpdaterFeatureProvider:Lcom/android/settings/overlay/DockUpdaterFeatureProvider;

    .line 119
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mDockUpdaterFeatureProvider:Lcom/android/settings/overlay/DockUpdaterFeatureProvider;

    return-object p0
.end method

.method public getFaceFeatureProvider()Lcom/android/settings/biometrics/face/FaceFeatureProvider;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mFaceFeatureProvider:Lcom/android/settings/biometrics/face/FaceFeatureProvider;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lcom/google/android/settings/biometrics/face/FaceFeatureProviderGoogleImpl;

    invoke-direct {v0}, Lcom/google/android/settings/biometrics/face/FaceFeatureProviderGoogleImpl;-><init>()V

    iput-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mFaceFeatureProvider:Lcom/android/settings/biometrics/face/FaceFeatureProvider;

    .line 188
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mFaceFeatureProvider:Lcom/android/settings/biometrics/face/FaceFeatureProvider;

    return-object p0
.end method

.method public getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/google/android/settings/core/instrumentation/SettingsGoogleMetricsFeatureProvider;

    invoke-direct {v0}, Lcom/google/android/settings/core/instrumentation/SettingsGoogleMetricsFeatureProvider;-><init>()V

    iput-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 84
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-object p0
.end method

.method public getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mPowerUsageProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/google/android/settings/fuelgauge/PowerUsageFeatureProviderGoogleImpl;

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/settings/fuelgauge/PowerUsageFeatureProviderGoogleImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mPowerUsageProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    .line 111
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mPowerUsageProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    return-object p0
.end method

.method public getSearchFeatureProvider()Lcom/android/settings/search/SearchFeatureProvider;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mSearchFeatureProvider:Lcom/android/settings/search/SearchFeatureProvider;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lcom/google/android/settings/search/SearchFeatureProviderGoogleImpl;

    invoke-direct {v0}, Lcom/google/android/settings/search/SearchFeatureProviderGoogleImpl;-><init>()V

    iput-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mSearchFeatureProvider:Lcom/android/settings/search/SearchFeatureProvider;

    .line 127
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mSearchFeatureProvider:Lcom/android/settings/search/SearchFeatureProvider;

    return-object p0
.end method

.method public getSuggestionFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mSuggestionFeatureProvider:Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lcom/google/android/settings/dashboard/suggestions/SuggestionFeatureProviderGoogleImpl;

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/settings/dashboard/suggestions/SuggestionFeatureProviderGoogleImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mSuggestionFeatureProvider:Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    .line 156
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mSuggestionFeatureProvider:Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    return-object p0
.end method

.method public getSupportFeatureProvider(Landroid/content/Context;)Lcom/android/settings/overlay/SupportFeatureProvider;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mSupportProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/google/android/settings/support/SupportFeatureProviderImpl;

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/settings/support/SupportFeatureProviderImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mSupportProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    .line 93
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mSupportProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    return-object p0
.end method

.method public getSurveyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/overlay/SurveyFeatureProvider;
    .locals 4

    const/4 v0, 0x0

    .line 135
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "settingsgoogle:surveys_enabled"

    invoke-static {v1, v2, v0}, Lcom/google/android/settings/experiments/GServicesProxy;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "FeatureFactoryImpl"

    const-string v3, "Error reading survey feature enabled state"

    .line 138
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mSurveyFeatureProvider:Lcom/android/settings/overlay/SurveyFeatureProvider;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lcom/google/android/settings/survey/SurveyFeatureProviderImpl;

    invoke-direct {v0, p1}, Lcom/google/android/settings/survey/SurveyFeatureProviderImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mSurveyFeatureProvider:Lcom/android/settings/overlay/SurveyFeatureProvider;

    .line 145
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mSurveyFeatureProvider:Lcom/android/settings/overlay/SurveyFeatureProvider;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWifiTrackerLibProvider()Lcom/android/settings/wifi/WifiTrackerLibProvider;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mWifiTrackerLibProvider:Lcom/android/settings/wifi/WifiTrackerLibProvider;

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Lcom/google/android/settings/wifi/WifiTrackerLibProviderGoogleImpl;

    invoke-direct {v0}, Lcom/google/android/settings/wifi/WifiTrackerLibProviderGoogleImpl;-><init>()V

    iput-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mWifiTrackerLibProvider:Lcom/android/settings/wifi/WifiTrackerLibProvider;

    .line 196
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mWifiTrackerLibProvider:Lcom/android/settings/wifi/WifiTrackerLibProvider;

    return-object p0
.end method
