.class Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController$SettingObserver;
.super Landroid/database/ContentObserver;
.source "ColumbusTogglePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingObserver"
.end annotation


# instance fields
.field private final mPreference:Landroidx/preference/Preference;

.field final synthetic this$0:Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;


# direct methods
.method constructor <init>(Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;Landroidx/preference/Preference;)V
    .locals 1

    .line 106
    iput-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController$SettingObserver;->this$0:Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;

    .line 107
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 108
    iput-object p2, p0, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController$SettingObserver;->mPreference:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 124
    iget-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController$SettingObserver;->this$0:Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;

    iget-object p0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController$SettingObserver;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public register()V
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController$SettingObserver;->this$0:Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;

    invoke-static {v0}, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;->access$100(Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 113
    invoke-static {}, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;->access$000()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 112
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public unregister()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController$SettingObserver;->this$0:Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;

    invoke-static {v0}, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;->access$100(Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
