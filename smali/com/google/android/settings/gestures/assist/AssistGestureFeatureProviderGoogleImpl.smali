.class public Lcom/google/android/settings/gestures/assist/AssistGestureFeatureProviderGoogleImpl;
.super Lcom/android/settings/gestures/AssistGestureFeatureProviderImpl;
.source "AssistGestureFeatureProviderGoogleImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/android/settings/gestures/AssistGestureFeatureProviderImpl;-><init>()V

    return-void
.end method

.method private static hasAssistGestureSensor(Landroid/content/Context;)Z
    .locals 1

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.sensor.assist"

    .line 104
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isGsaCurrentAssistant(Landroid/content/Context;)Z
    .locals 2

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0408b0

    .line 94
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 96
    new-instance v1, Lcom/android/internal/app/AssistUtils;

    invoke-direct {v1, p0}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    .line 98
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 99
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isOpaEligible(Landroid/content/Context;)Z
    .locals 3

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "systemui.google.opa_enabled"

    const/4 v1, 0x0

    const/4 v2, -0x2

    .line 71
    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isOpaEnabled(Landroid/content/Context;)Z
    .locals 3

    const/4 p0, 0x0

    :try_start_0
    const-string v0, "lock_settings"

    .line 81
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 80
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    const-string v1, "systemui.google.opa_user_enabled"

    const/4 v2, -0x2

    .line 82
    invoke-interface {v0, v1, p0, v2}, Lcom/android/internal/widget/ILockSettings;->getBoolean(Ljava/lang/String;ZI)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    const-string v1, "AssistGestureFeatureProviderGoogleImpl"

    const-string v2, "isOpaEnabled RemoteException"

    .line 87
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p0
.end method


# virtual methods
.method public isDeskClockSupported(Landroid/content/Context;)Z
    .locals 2

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0408b2

    const/4 v1, 0x0

    .line 59
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 60
    iget-object p0, p0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    const v0, 0x7f0408b1

    .line 61
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 60
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v1
.end method

.method public isSensorAvailable(Landroid/content/Context;)Z
    .locals 0

    .line 47
    invoke-static {p1}, Lcom/google/android/settings/gestures/assist/AssistGestureFeatureProviderGoogleImpl;->hasAssistGestureSensor(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isSupported(Landroid/content/Context;)Z
    .locals 0

    .line 41
    invoke-static {p1}, Lcom/google/android/settings/gestures/assist/AssistGestureFeatureProviderGoogleImpl;->hasAssistGestureSensor(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/google/android/settings/gestures/assist/AssistGestureFeatureProviderGoogleImpl;->isGsaCurrentAssistant(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 42
    invoke-static {p1}, Lcom/google/android/settings/gestures/assist/AssistGestureFeatureProviderGoogleImpl;->isOpaEligible(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/google/android/settings/gestures/assist/AssistGestureFeatureProviderGoogleImpl;->isOpaEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
