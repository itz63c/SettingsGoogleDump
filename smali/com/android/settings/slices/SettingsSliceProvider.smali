.class public Lcom/android/settings/slices/SettingsSliceProvider;
.super Landroidx/slice/SliceProvider;
.source "SettingsSliceProvider.java"


# static fields
.field private static final KEY_VALUE_LIST_PARSER:Landroid/util/KeyValueListParser;

.field private static final PUBLICLY_SUPPORTED_CUSTOM_SLICE_URIS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mNightMode:Ljava/lang/Boolean;

.field final mPinnedWorkers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation
.end field

.field mSliceWeakDataCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Lcom/android/settings/slices/SliceData;",
            ">;"
        }
    .end annotation
.end field

.field mSlicesDatabaseAccessor:Lcom/android/settings/slices/SlicesDatabaseAccessor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Landroid/net/Uri;

    .line 125
    sget-object v1, Lcom/android/settings/slices/CustomSliceRegistry;->BLUETOOTH_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/slices/CustomSliceRegistry;->FLASHLIGHT_SLICE_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/slices/CustomSliceRegistry;->LOCATION_SLICE_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/slices/CustomSliceRegistry;->MOBILE_DATA_SLICE_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/slices/CustomSliceRegistry;->WIFI_CALLING_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/slices/CustomSliceRegistry;->WIFI_SLICE_URI:Landroid/net/Uri;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/slices/CustomSliceRegistry;->ZEN_MODE_SLICE_URI:Landroid/net/Uri;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 126
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/settings/slices/SettingsSliceProvider;->PUBLICLY_SUPPORTED_CUSTOM_SLICE_URIS:Ljava/util/List;

    .line 136
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    sput-object v0, Lcom/android/settings/slices/SettingsSliceProvider;->KEY_VALUE_LIST_PARSER:Landroid/util/KeyValueListParser;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "android.permission.READ_SEARCH_INDEXABLES"

    .line 150
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/slice/SliceProvider;-><init>([Ljava/lang/String;)V

    .line 144
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mPinnedWorkers:Ljava/util/Map;

    return-void
.end method

.method private static getSliceStub(Landroid/net/Uri;)Landroidx/slice/Slice;
    .locals 1

    .line 498
    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-direct {v0, p0}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method static grantAllowlistedPackagePermissions(Landroid/content/Context;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const-string v0, "SettingsSliceProvider"

    if-nez p1, :cond_0

    const-string v1, "No descendants to grant permission with, skipping."

    .line 353
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0100af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 357
    array-length v2, v1

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 363
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    array-length v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "Allowlisting %d uris to %d pkgs."

    .line 361
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const-class v0, Landroid/app/slice/SliceManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/slice/SliceManager;

    .line 366
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 367
    array-length v2, v1

    move v3, v4

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v5, v1, v3

    .line 368
    invoke-virtual {p0, v5, v0}, Landroid/app/slice/SliceManager;->grantSlicePermission(Ljava/lang/String;Landroid/net/Uri;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_1
    const-string p0, "No packages to allowlist, skipping."

    .line 358
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$loadSlice$4(Lcom/android/settings/core/BasePreferenceController;Landroid/net/Uri;)V
    .locals 0

    .line 406
    invoke-direct {p0, p1, p2}, Lcom/android/settings/slices/SettingsSliceProvider;->startBackgroundWorker(Lcom/android/settings/slices/Sliceable;Landroid/net/Uri;)V

    return-void
.end method

.method private synthetic lambda$loadSliceInBackground$5(Landroid/net/Uri;)V
    .locals 0

    .line 417
    invoke-virtual {p0, p1}, Lcom/android/settings/slices/SettingsSliceProvider;->loadSlice(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic lambda$onGetSliceDescendants$2(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 0

    .line 331
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onSlicePinned$0(Lcom/android/settings/slices/CustomSliceable;Landroid/net/Uri;)V
    .locals 0

    .line 170
    invoke-direct {p0, p1, p2}, Lcom/android/settings/slices/SettingsSliceProvider;->startBackgroundWorker(Lcom/android/settings/slices/Sliceable;Landroid/net/Uri;)V

    return-void
.end method

.method private synthetic lambda$onSliceUnpinned$1(Landroid/net/Uri;)V
    .locals 0

    .line 192
    invoke-direct {p0, p1}, Lcom/android/settings/slices/SettingsSliceProvider;->stopBackgroundWorker(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic lambda$shutdown$3()V
    .locals 0

    .line 376
    invoke-static {}, Lcom/android/settings/slices/SliceBackgroundWorker;->shutdown()V

    return-void
.end method

.method private static parseStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, ":"

    .line 503
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 504
    array-length v0, p0

    if-lez v0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method private startBackgroundWorker(Lcom/android/settings/slices/Sliceable;Landroid/net/Uri;)V
    .locals 2

    .line 467
    invoke-interface {p1}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mPinnedWorkers:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 476
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting background worker for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsSliceProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 477
    invoke-static {v0, p1, p2}, Lcom/android/settings/slices/SliceBackgroundWorker;->getInstance(Landroid/content/Context;Lcom/android/settings/slices/Sliceable;Landroid/net/Uri;)Lcom/android/settings/slices/SliceBackgroundWorker;

    move-result-object p1

    .line 479
    iget-object p0, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mPinnedWorkers:Ljava/util/Map;

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    invoke-virtual {p1}, Lcom/android/settings/slices/SliceBackgroundWorker;->pin()V

    return-void
.end method

.method private stopBackgroundWorker(Landroid/net/Uri;)V
    .locals 3

    .line 484
    iget-object v0, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mPinnedWorkers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/slices/SliceBackgroundWorker;

    if-eqz v0, :cond_0

    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping background worker for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SettingsSliceProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-virtual {v0}, Lcom/android/settings/slices/SliceBackgroundWorker;->unpin()V

    .line 488
    iget-object p0, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mPinnedWorkers:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method getBlockedKeys()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 432
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "blocked_slices"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 434
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    .line 437
    :try_start_0
    sget-object v1, Lcom/android/settings/slices/SettingsSliceProvider;->KEY_VALUE_LIST_PARSER:Landroid/util/KeyValueListParser;

    invoke-virtual {v1, p0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    invoke-static {p0}, Lcom/android/settings/slices/SettingsSliceProvider;->parseStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 444
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v0

    :catch_0
    move-exception p0

    const-string v1, "SettingsSliceProvider"

    const-string v2, "Bad Settings Slices Allowlist flags"

    .line 439
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method isPrivateSlicesNeeded(Landroid/net/Uri;)Z
    .locals 4

    .line 450
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040597

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 452
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 454
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 455
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 456
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const-string v3, "android.permission.READ_SEARCH_INDEXABLES"

    .line 455
    invoke-virtual {v0, v3, v1, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 458
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 459
    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v2

    if-eqz v0, :cond_1

    .line 461
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f04059c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 460
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v2, v1

    :cond_1
    return v2
.end method

.method public synthetic lambda$loadSlice$4$SettingsSliceProvider(Lcom/android/settings/core/BasePreferenceController;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/slices/SettingsSliceProvider;->lambda$loadSlice$4(Lcom/android/settings/core/BasePreferenceController;Landroid/net/Uri;)V

    return-void
.end method

.method public synthetic lambda$loadSliceInBackground$5$SettingsSliceProvider(Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/slices/SettingsSliceProvider;->lambda$loadSliceInBackground$5(Landroid/net/Uri;)V

    return-void
.end method

.method public synthetic lambda$onSlicePinned$0$SettingsSliceProvider(Lcom/android/settings/slices/CustomSliceable;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/slices/SettingsSliceProvider;->lambda$onSlicePinned$0(Lcom/android/settings/slices/CustomSliceable;Landroid/net/Uri;)V

    return-void
.end method

.method public synthetic lambda$onSliceUnpinned$1$SettingsSliceProvider(Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/slices/SettingsSliceProvider;->lambda$onSliceUnpinned$1(Landroid/net/Uri;)V

    return-void
.end method

.method loadSlice(Landroid/net/Uri;)V
    .locals 8

    const-string v0, "SettingsSliceProvider"

    .line 382
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 386
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mSlicesDatabaseAccessor:Lcom/android/settings/slices/SlicesDatabaseAccessor;

    invoke-virtual {v3, p1}, Lcom/android/settings/slices/SlicesDatabaseAccessor;->getSliceDataFromUri(Landroid/net/Uri;)Lcom/android/settings/slices/SliceData;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 392
    invoke-static {v4, v3}, Lcom/android/settings/slices/SliceBuilderUtils;->getPreferenceController(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object v4

    .line 395
    invoke-interface {v4}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 397
    instance-of v6, v4, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;

    if-eqz v6, :cond_0

    .line 399
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v7, v4

    check-cast v7, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;

    .line 400
    invoke-virtual {v7}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->getAudioStream()I

    move-result v7

    .line 399
    invoke-static {v6, v5, p1, v7}, Lcom/android/settings/slices/VolumeSliceHelper;->registerIntentToUri(Landroid/content/Context;Landroid/content/IntentFilter;Landroid/net/Uri;I)V

    goto :goto_0

    .line 402
    :cond_0
    invoke-virtual {p0, v5, p1}, Lcom/android/settings/slices/SettingsSliceProvider;->registerIntentToUri(Landroid/content/IntentFilter;Landroid/net/Uri;)V

    .line 406
    :cond_1
    :goto_0
    new-instance v5, Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$lbswSYtCVtSFa3uMxKXBssJ_RLw;

    invoke-direct {v5, p0, v4, p1}, Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$lbswSYtCVtSFa3uMxKXBssJ_RLw;-><init>(Lcom/android/settings/slices/SettingsSliceProvider;Lcom/android/settings/core/BasePreferenceController;Landroid/net/Uri;)V

    invoke-static {v5}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 408
    iget-object v4, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mSliceWeakDataCache:Ljava/util/Map;

    invoke-interface {v4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 411
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Built slice ("

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") in: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 411
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create slicedata for uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method loadSliceInBackground(Landroid/net/Uri;)V
    .locals 1

    .line 417
    new-instance v0, Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$IApJtz2y7JXGRdMRCkYjf83H4T4;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$IApJtz2y7JXGRdMRCkYjf83H4T4;-><init>(Lcom/android/settings/slices/SettingsSliceProvider;Landroid/net/Uri;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public onBindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;
    .locals 4

    .line 197
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 199
    :try_start_0
    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->isMainThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 200
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 201
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    .line 202
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 200
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/slices/SettingsSliceProvider;->getBlockedKeys()Ljava/util/Set;

    move-result-object v1

    .line 205
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "SettingsSliceProvider"

    if-eqz v1, :cond_1

    .line 207
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requested blocked slice with Uri: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x0

    .line 263
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p0

    .line 211
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v1

    .line 212
    iget-object v3, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mNightMode:Ljava/lang/Boolean;

    if-nez v3, :cond_2

    .line 213
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mNightMode:Ljava/lang/Boolean;

    .line 214
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f13031c

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    goto :goto_0

    .line 215
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eq v3, v1, :cond_3

    const-string v3, "Night mode changed, reload theme"

    .line 216
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mNightMode:Ljava/lang/Boolean;

    .line 218
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 223
    :cond_3
    :goto_0
    invoke-static {p1}, Lcom/android/settings/slices/CustomSliceRegistry;->isValidUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 224
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 225
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    .line 226
    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getSlicesFeatureProvider()Lcom/android/settings/slices/SlicesFeatureProvider;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/android/settings/slices/SlicesFeatureProvider;->getSliceableFromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/settings/slices/CustomSliceable;

    move-result-object p0

    .line 227
    invoke-interface {p0}, Lcom/android/settings/slices/CustomSliceable;->getSlice()Landroidx/slice/Slice;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 263
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p0

    .line 230
    :cond_4
    :try_start_3
    sget-object v1, Lcom/android/settings/slices/CustomSliceRegistry;->WIFI_CALLING_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 231
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    .line 232
    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getSlicesFeatureProvider()Lcom/android/settings/slices/SlicesFeatureProvider;

    move-result-object v1

    .line 233
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/android/settings/slices/SlicesFeatureProvider;->getNewWifiCallingSliceHelper(Landroid/content/Context;)Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;

    move-result-object p0

    .line 234
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->createWifiCallingSlice(Landroid/net/Uri;)Landroidx/slice/Slice;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 263
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p0

    .line 235
    :cond_5
    :try_start_4
    sget-object v1, Lcom/android/settings/slices/CustomSliceRegistry;->ZEN_MODE_SLICE_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 236
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/notification/zen/ZenModeSliceBuilder;->getSlice(Landroid/content/Context;)Landroidx/slice/Slice;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 263
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p0

    .line 237
    :cond_6
    :try_start_5
    sget-object v1, Lcom/android/settings/slices/CustomSliceRegistry;->BLUETOOTH_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 238
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothSliceBuilder;->getSlice(Landroid/content/Context;)Landroidx/slice/Slice;

    move-result-object p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 263
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p0

    .line 239
    :cond_7
    :try_start_6
    sget-object v1, Lcom/android/settings/slices/CustomSliceRegistry;->ENHANCED_4G_SLICE_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 240
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    .line 241
    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getSlicesFeatureProvider()Lcom/android/settings/slices/SlicesFeatureProvider;

    move-result-object v1

    .line 242
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/android/settings/slices/SlicesFeatureProvider;->getNewEnhanced4gLteSliceHelper(Landroid/content/Context;)Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;

    move-result-object p0

    .line 243
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/Enhanced4gLteSliceHelper;->createEnhanced4gLteSlice(Landroid/net/Uri;)Landroidx/slice/Slice;

    move-result-object p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 263
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p0

    .line 244
    :cond_8
    :try_start_7
    sget-object v1, Lcom/android/settings/slices/CustomSliceRegistry;->WIFI_CALLING_PREFERENCE_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 245
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    .line 246
    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getSlicesFeatureProvider()Lcom/android/settings/slices/SlicesFeatureProvider;

    move-result-object v1

    .line 247
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/android/settings/slices/SlicesFeatureProvider;->getNewWifiCallingSliceHelper(Landroid/content/Context;)Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;

    move-result-object p0

    .line 248
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->createWifiCallingPreferenceSlice(Landroid/net/Uri;)Landroidx/slice/Slice;

    move-result-object p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 263
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p0

    .line 251
    :cond_9
    :try_start_8
    iget-object v1, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mSliceWeakDataCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/slices/SliceData;

    if-nez v1, :cond_a

    .line 253
    invoke-virtual {p0, p1}, Lcom/android/settings/slices/SettingsSliceProvider;->loadSliceInBackground(Landroid/net/Uri;)V

    .line 254
    invoke-static {p1}, Lcom/android/settings/slices/SettingsSliceProvider;->getSliceStub(Landroid/net/Uri;)Landroidx/slice/Slice;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 263
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p0

    .line 258
    :cond_a
    :try_start_9
    invoke-virtual {p0}, Landroidx/slice/SliceProvider;->getPinnedSlices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 259
    iget-object v2, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mSliceWeakDataCache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    :cond_b
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSlice(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroidx/slice/Slice;

    move-result-object p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 263
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 264
    throw p0
.end method

.method public onCreatePermissionRequest(Landroid/net/Uri;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 1

    .line 343
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "com.android.settings"

    .line 344
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 345
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 p2, 0x0

    const/high16 v0, 0x4000000

    invoke-static {p0, p2, p1, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public onCreateSliceProvider()Z
    .locals 2

    .line 155
    new-instance v0, Lcom/android/settings/slices/SlicesDatabaseAccessor;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/slices/SlicesDatabaseAccessor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mSlicesDatabaseAccessor:Lcom/android/settings/slices/SlicesDatabaseAccessor;

    .line 156
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mSliceWeakDataCache:Ljava/util/Map;

    const/4 p0, 0x1

    return p0
.end method

.method public onGetSliceDescendants(Landroid/net/Uri;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 291
    invoke-virtual {p0, p1}, Lcom/android/settings/slices/SettingsSliceProvider;->isPrivateSlicesNeeded(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mSlicesDatabaseAccessor:Lcom/android/settings/slices/SlicesDatabaseAccessor;

    .line 293
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/slices/SlicesDatabaseAccessor;->getSliceUris(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    .line 292
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provide "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " non-public slices"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SettingsSliceProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "content"

    .line 297
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 298
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 299
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 302
    :cond_0
    invoke-static {p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getPathData(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 306
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 310
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 311
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 312
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v3, "/action"

    .line 316
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "/intent"

    .line 317
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    return-object v0

    .line 323
    :cond_2
    iget-object p1, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mSlicesDatabaseAccessor:Lcom/android/settings/slices/SlicesDatabaseAccessor;

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v3}, Lcom/android/settings/slices/SlicesDatabaseAccessor;->getSliceUris(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz v2, :cond_3

    .line 325
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 327
    sget-object p1, Lcom/android/settings/slices/SettingsSliceProvider;->PUBLICLY_SUPPORTED_CUSTOM_SLICE_URIS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 330
    :cond_3
    sget-object p1, Lcom/android/settings/slices/SettingsSliceProvider;->PUBLICLY_SUPPORTED_CUSTOM_SLICE_URIS:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v2, Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$D-B7DZ3Y1pfCxLKsFBp-aqFhNOg;

    invoke-direct {v2, v1}, Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$D-B7DZ3Y1pfCxLKsFBp-aqFhNOg;-><init>(Ljava/lang/String;)V

    .line 331
    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 332
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 333
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 335
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/android/settings/slices/SettingsSliceProvider;->grantAllowlistedPackagePermissions(Landroid/content/Context;Ljava/util/List;)V

    return-object v0
.end method

.method public onSlicePinned(Landroid/net/Uri;)V
    .locals 2

    .line 162
    invoke-static {p1}, Lcom/android/settings/slices/CustomSliceRegistry;->isValidUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 164
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    .line 165
    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getSlicesFeatureProvider()Lcom/android/settings/slices/SlicesFeatureProvider;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/android/settings/slices/SlicesFeatureProvider;->getSliceableFromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/settings/slices/CustomSliceable;

    move-result-object v0

    .line 166
    invoke-interface {v0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {p0, v1, p1}, Lcom/android/settings/slices/SettingsSliceProvider;->registerIntentToUri(Landroid/content/IntentFilter;Landroid/net/Uri;)V

    .line 170
    :cond_0
    new-instance v1, Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$GWOY3jW-jzzDCXZEaz0fUHl3Y-U;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$GWOY3jW-jzzDCXZEaz0fUHl3Y-U;-><init>(Lcom/android/settings/slices/SettingsSliceProvider;Lcom/android/settings/slices/CustomSliceable;Landroid/net/Uri;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void

    .line 174
    :cond_1
    sget-object v0, Lcom/android/settings/slices/CustomSliceRegistry;->ZEN_MODE_SLICE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    sget-object v0, Lcom/android/settings/notification/zen/ZenModeSliceBuilder;->INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/slices/SettingsSliceProvider;->registerIntentToUri(Landroid/content/IntentFilter;Landroid/net/Uri;)V

    return-void

    .line 177
    :cond_2
    sget-object v0, Lcom/android/settings/slices/CustomSliceRegistry;->BLUETOOTH_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 178
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothSliceBuilder;->INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/slices/SettingsSliceProvider;->registerIntentToUri(Landroid/content/IntentFilter;Landroid/net/Uri;)V

    return-void

    .line 183
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/settings/slices/SettingsSliceProvider;->loadSliceInBackground(Landroid/net/Uri;)V

    return-void
.end method

.method public onSliceUnpinned(Landroid/net/Uri;)V
    .locals 2

    .line 188
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 189
    invoke-static {v0, p1}, Lcom/android/settings/slices/VolumeSliceHelper;->unregisterUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 190
    invoke-static {v0, p1}, Lcom/android/settingslib/SliceBroadcastRelay;->unregisterReceivers(Landroid/content/Context;Landroid/net/Uri;)V

    .line 192
    :cond_0
    new-instance v0, Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$XmNrusv-HDrZ8kfg--vXRb5M0Pw;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$XmNrusv-HDrZ8kfg--vXRb5M0Pw;-><init>(Lcom/android/settings/slices/SettingsSliceProvider;Landroid/net/Uri;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method registerIntentToUri(Landroid/content/IntentFilter;Landroid/net/Uri;)V
    .locals 1

    .line 426
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Lcom/android/settings/slices/SliceRelayReceiver;

    invoke-static {p0, p2, v0, p1}, Lcom/android/settingslib/SliceBroadcastRelay;->registerReceiver(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/Class;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public shutdown()V
    .locals 0

    .line 375
    sget-object p0, Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$H-bG4SdMsnOHkyNwBKc-u-k_8Gc;->INSTANCE:Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$H-bG4SdMsnOHkyNwBKc-u-k_8Gc;

    invoke-static {p0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
