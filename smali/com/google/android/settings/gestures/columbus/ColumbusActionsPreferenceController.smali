.class public Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "ColumbusActionsPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController$SettingObserver;
    }
.end annotation


# static fields
.field static final ACTION_METRICS:[I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final ACTION_TITLE_RES_IDS:[I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final ACTION_VALUE_RES_IDS:[I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final COLUMBUS_ENABLED_URI:Landroid/net/Uri;

.field private static final SECURE_KEY_COLUMBUS_ACTION:Ljava/lang/String; = "columbus_action"

.field private static final VALUE_TO_TITLE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sDefaultAction:Ljava/lang/String;


# instance fields
.field private final mActionPreferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/widget/RadioButtonPreference;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field private mSettingObserver:Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController$SettingObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "columbus_enabled"

    .line 41
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;->COLUMBUS_ENABLED_URI:Landroid/net/Uri;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;->VALUE_TO_TITLE_MAP:Ljava/util/Map;

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 45
    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;->ACTION_VALUE_RES_IDS:[I

    new-array v1, v0, [I

    .line 53
    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;->ACTION_TITLE_RES_IDS:[I

    new-array v0, v0, [I

    .line 61
    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;->ACTION_METRICS:[I

    return-void

    :array_0
    .array-data 4
        0x7f04055b
        0x7f040563
        0x7f040561
        0x7f04055f
        0x7f04055d
    .end array-data

    :array_1
    .array-data 4
        0x7f04055a
        0x7f040562
        0x7f040560
        0x7f04055e
        0x7f04055c
    .end array-data

    :array_2
    .array-data 4
        0x6ce
        0x6cf
        0x6d0
        0x6d1
        0x6d2
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 73
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;->mActionPreferences:Ljava/util/Map;

    .line 80
    iput-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;->mContext:Landroid/content/Context;

    .line 81
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void
.end method

.method static synthetic access$000()Landroid/net/Uri;
    .locals 1

    .line 36
    sget-object v0, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;->COLUMBUS_ENABLED_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static getColumbusAction(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 183
    invoke-static {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;->populateValueToTitleMapIfEmpty(Landroid/content/Context;)V

    .line 185
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "columbus_action"

    .line 184
    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 186
    sget-object v0, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;->VALUE_TO_TITLE_MAP:Ljava/util/Map;

    sget-object v1, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;->sDefaultAction:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private makeRadioPreference(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settingslib/widget/RadioButtonPreference;
    .locals 2

    .line 112
    new-instance v0, Lcom/google/android/settings/gestures/columbus/ColumbusRadioButtonPreference;

    iget-object v1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    .line 113
    invoke-virtual {v1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/settings/gestures/columbus/ColumbusRadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 114
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 116
    invoke-virtual {v0, p3}, Lcom/google/android/settings/gestures/columbus/ColumbusRadioButtonPreference;->setMetric(I)V

    .line 117
    invoke-virtual {v0, p0}, Lcom/android/settingslib/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;)V

    .line 118
    iget-object p0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-object v0
.end method

.method private static populateValueToTitleMapIfEmpty(Landroid/content/Context;)V
    .locals 5

    .line 190
    sget-object v0, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;->VALUE_TO_TITLE_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    sget-object v0, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;->ACTION_VALUE_RES_IDS:[I

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 193
    sget-object v2, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;->ACTION_VALUE_RES_IDS:[I

    aget v2, v2, v1

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 194
    sget-object v3, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;->ACTION_TITLE_RES_IDS:[I

    aget v3, v3, v1

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 195
    sget-object v4, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;->VALUE_TO_TITLE_MAP:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 197
    sput-object v2, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;->sDefaultAction:Ljava/lang/String;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 5

    .line 86
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    if-eqz p1, :cond_1

    .line 93
    new-instance p1, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController$SettingObserver;

    iget-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-direct {p1, p0, v0}, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController$SettingObserver;-><init>(Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;Landroidx/preference/Preference;)V

    iput-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;->mSettingObserver:Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController$SettingObserver;

    .line 96
    :cond_1
    iget-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;->mActionPreferences:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 97
    sget-object p1, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;->VALUE_TO_TITLE_MAP:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 99
    sget-object p1, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;->ACTION_VALUE_RES_IDS:[I

    array-length p1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_3

    .line 101
    iget-object v1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;->ACTION_VALUE_RES_IDS:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 102
    iget-object v2, p0, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;->ACTION_TITLE_RES_IDS:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 103
    iget-object v3, p0, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;->mActionPreferences:Ljava/util/Map;

    sget-object v4, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;->ACTION_METRICS:[I

    aget v4, v4, v0

    invoke-direct {p0, v1, v2, v4}, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;->makeRadioPreference(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settingslib/widget/RadioButtonPreference;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v3, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;->VALUE_TO_TITLE_MAP:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 106
    sput-object v1, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;->sDefaultAction:Ljava/lang/String;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusPreferenceController;->isColumbusSupported(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public onRadioButtonClicked(Lcom/android/settingslib/widget/RadioButtonPreference;)V
    .locals 3

    .line 129
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;->mContext:Landroid/content/Context;

    .line 131
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "columbus_action"

    .line 130
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;->mContext:Landroid/content/Context;

    .line 136
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 135
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 137
    iget-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v0}, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 139
    instance-of v0, p1, Lcom/google/android/settings/gestures/columbus/ColumbusRadioButtonPreference;

    if-eqz v0, :cond_1

    .line 140
    check-cast p1, Lcom/google/android/settings/gestures/columbus/ColumbusRadioButtonPreference;

    .line 142
    iget-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object p0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/settings/gestures/columbus/ColumbusRadioButtonPreference;->getMetric()I

    move-result p1

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/util/Pair;

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;->mSettingObserver:Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    .line 170
    iget-object v1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;)V

    .line 171
    iget-object p0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;->mSettingObserver:Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController$SettingObserver;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController$SettingObserver;->onChange(Z)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;->mSettingObserver:Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    .line 178
    iget-object p0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController$SettingObserver;->unregister(Landroid/content/ContentResolver;)V

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 148
    iget-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;->mActionPreferences:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 152
    :cond_0
    iget-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;->mContext:Landroid/content/Context;

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "columbus_action"

    .line 152
    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 154
    iget-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;->mActionPreferences:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 155
    :cond_1
    sget-object p1, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;->sDefaultAction:Ljava/lang/String;

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/settings/gestures/columbus/ColumbusPreferenceController;->isColumbusEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 158
    iget-object p0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusActionsPreferenceController;->mActionPreferences:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/widget/RadioButtonPreference;

    .line 159
    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 160
    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-eq v3, v2, :cond_3

    .line 161
    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 163
    :cond_3
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
