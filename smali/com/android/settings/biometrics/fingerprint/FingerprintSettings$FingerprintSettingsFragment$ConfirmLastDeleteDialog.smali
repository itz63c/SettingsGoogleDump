.class public Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "FingerprintSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLastDeleteDialog"
.end annotation


# instance fields
.field private mFp:Landroid/hardware/fingerprint/Fingerprint;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 862
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;)Landroid/hardware/fingerprint/Fingerprint;
    .locals 0

    .line 862
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;->mFp:Landroid/hardware/fingerprint/Fingerprint;

    return-object p0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x23b

    return p0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 873
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "fingerprint"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/Fingerprint;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;->mFp:Landroid/hardware/fingerprint/Fingerprint;

    .line 875
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "isProfileChallengeUser"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 876
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f040877

    .line 877
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    if-eqz p1, :cond_0

    const p1, 0x7f040876

    goto :goto_0

    :cond_0
    const p1, 0x7f040875

    .line 878
    :goto_0
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f040874

    new-instance v1, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog$2;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog$2;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;)V

    .line 881
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0404ca

    new-instance v1, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog$1;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog$1;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;)V

    .line 891
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 899
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method