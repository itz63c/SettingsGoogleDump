.class public Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController;
.super Lcom/android/settings/connecteddevice/usb/UsbDetailsController;
.source "UsbDetailsTranscodeMtpController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field private mSwitchPreference:Landroidx/preference/SwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V

    return-void
.end method

.method private static isDeviceInFileTransferMode(JI)Z
    .locals 4

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    const-wide/16 v0, 0x4

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    const-wide/16 v0, 0x10

    and-long/2addr p0, v0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 53
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    .line 55
    new-instance v0, Landroidx/preference/SwitchPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    const p1, 0x7f0412c9

    .line 56
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 57
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 58
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "usb_transcode_mtp"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 83
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    .line 77
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "sys.fuse.transcode_mtp"

    .line 76
    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method protected refresh(ZJII)V
    .locals 2

    .line 63
    iget-object p4, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    const-wide/16 v0, 0x14

    invoke-virtual {p4, v0, v1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areFunctionsSupported(J)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 64
    iget-object p4, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mFragment:Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;

    invoke-virtual {p4}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p4

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p4, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 66
    :cond_0
    iget-object p4, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mFragment:Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;

    invoke-virtual {p4}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p4

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p4, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 69
    :goto_0
    iget-object p4, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    const-string v0, "sys.fuse.transcode_mtp"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p4, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 70
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    if-eqz p1, :cond_1

    .line 71
    invoke-static {p2, p3, p5}, Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController;->isDeviceInFileTransferMode(JI)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 70
    :goto_1
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method
