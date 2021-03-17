.class public Lcom/google/android/settings/external/specialcase/LocationSetting;
.super Ljava/lang/Object;
.source "LocationSetting.java"

# interfaces
.implements Lcom/google/android/settings/external/Queryable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAvailability(Landroid/content/Context;)I
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/google/android/settings/external/specialcase/LocationSetting;->isRestricted(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getCurrentValue(Landroid/content/Context;)I
    .locals 2

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 105
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    const-string v0, "location_mode"

    const/4 v1, 0x0

    .line 104
    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private getIconResource()I
    .locals 0

    const p0, 0x108053f

    return p0
.end method

.method private getScreenTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const p0, 0x7f040aa5

    .line 116
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isRestricted(Landroid/content/Context;)Z
    .locals 0

    const-string p0, "user"

    .line 127
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    const-string p1, "no_share_location"

    .line 128
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private updateLocationMode(Landroid/content/Context;II)Z
    .locals 1

    .line 132
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.android.settings.location.MODE_CHANGING"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "CURRENT_MODE"

    .line 133
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "NEW_MODE"

    .line 134
    invoke-virtual {p0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "android.permission.WRITE_SECURE_SETTINGS"

    .line 135
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "location_mode"

    .line 136
    invoke-static {p0, p1, p3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method private validateInput(I)V
    .locals 2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected value for location toggle. Expected 0 or 1, but found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getAccessCursor(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/database/Cursor;
    .locals 4

    .line 51
    invoke-direct {p0, p1}, Lcom/google/android/settings/external/specialcase/LocationSetting;->getCurrentValue(Landroid/content/Context;)I

    move-result p2

    .line 52
    invoke-direct {p0, p1}, Lcom/google/android/settings/external/specialcase/LocationSetting;->getAvailability(Landroid/content/Context;)I

    move-result v0

    .line 53
    const-class v1, Lcom/android/settings/location/LocationSettings;

    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/settings/external/specialcase/LocationSetting;->getScreenTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "location"

    .line 53
    invoke-interface {p0, p1, v3, v1, v2}, Lcom/google/android/settings/external/Queryable;->getIntentString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 55
    invoke-direct {p0}, Lcom/google/android/settings/external/specialcase/LocationSetting;->getIconResource()I

    move-result p0

    .line 57
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/google/android/settings/external/ExternalSettingsContract;->EXTERNAL_SETTINGS_QUERY_COLUMNS:[Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 58
    invoke-virtual {v1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    .line 59
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v3, "existing_value"

    invoke-virtual {v2, v3, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p2

    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "availability"

    invoke-virtual {p2, v2, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p2

    const-string v0, "intent"

    .line 61
    invoke-virtual {p2, v0, p1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p1

    .line 62
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "icon"

    invoke-virtual {p1, p2, p0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-object v1
.end method

.method public getUpdateCursor(Landroid/content/Context;Lcom/android/settings/slices/SliceData;I)Landroid/database/Cursor;
    .locals 4

    .line 69
    invoke-direct {p0, p3}, Lcom/google/android/settings/external/specialcase/LocationSetting;->validateInput(I)V

    .line 70
    invoke-direct {p0, p1}, Lcom/google/android/settings/external/specialcase/LocationSetting;->getCurrentValue(Landroid/content/Context;)I

    move-result p2

    .line 71
    invoke-direct {p0, p1}, Lcom/google/android/settings/external/specialcase/LocationSetting;->getAvailability(Landroid/content/Context;)I

    move-result v0

    .line 72
    const-class v1, Lcom/android/settings/location/LocationSettings;

    .line 73
    invoke-direct {p0, p1}, Lcom/google/android/settings/external/specialcase/LocationSetting;->getScreenTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "location"

    .line 72
    invoke-interface {p0, p1, v3, v1, v2}, Lcom/google/android/settings/external/Queryable;->getIntentString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-direct {p0}, Lcom/google/android/settings/external/specialcase/LocationSetting;->getIconResource()I

    move-result v2

    .line 78
    invoke-interface {p0, v0, p2, p3}, Lcom/google/android/settings/external/Queryable;->shouldChangeValue(III)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/settings/external/specialcase/LocationSetting;->updateLocationMode(Landroid/content/Context;II)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move p3, p2

    .line 83
    :goto_0
    new-instance p0, Landroid/database/MatrixCursor;

    sget-object p1, Lcom/google/android/settings/external/ExternalSettingsContract;->EXTERNAL_SETTINGS_UPDATE_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p1

    .line 85
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v3, "newValue"

    invoke-virtual {p1, v3, p3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p1

    .line 86
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "existing_value"

    invoke-virtual {p1, p3, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p1

    .line 87
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "availability"

    invoke-virtual {p1, p3, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p1

    const-string p2, "intent"

    .line 88
    invoke-virtual {p1, p2, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p1

    .line 89
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "icon"

    invoke-virtual {p1, p3, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-object p0
.end method
