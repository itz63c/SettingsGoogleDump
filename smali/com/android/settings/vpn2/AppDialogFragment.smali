.class public Lcom/android/settings/vpn2/AppDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "AppDialogFragment.java"

# interfaces
.implements Lcom/android/settings/vpn2/AppDialog$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/vpn2/AppDialogFragment$Listener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/settings/vpn2/AppDialogFragment$Listener;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mUserManager:Landroid/os/UserManager;

.field private mVpnManager:Landroid/net/VpnManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/vpn2/AppDialogFragment;Landroid/content/DialogInterface;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/vpn2/AppDialogFragment;->onDisconnect(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private getUserId()I
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/android/settings/vpn2/AppDialogFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    return p0
.end method

.method private isUiRestricted()Z
    .locals 2

    .line 165
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppDialogFragment;->getUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 166
    iget-object p0, p0, Lcom/android/settings/vpn2/AppDialogFragment;->mUserManager:Landroid/os/UserManager;

    const-string v1, "no_config_vpn"

    invoke-virtual {p0, v1, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method private onDisconnect(Landroid/content/DialogInterface;)V
    .locals 3

    .line 153
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppDialogFragment;->isUiRestricted()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 156
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppDialogFragment;->getUserId()I

    move-result p1

    .line 157
    iget-object v0, p0, Lcom/android/settings/vpn2/AppDialogFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/vpn2/AppDialogFragment;->mVpnManager:Landroid/net/VpnManager;

    invoke-static {v1, p1}, Lcom/android/settings/vpn2/VpnUtils;->getConnectedPackage(Landroid/net/VpnManager;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/android/settings/vpn2/AppDialogFragment;->mVpnManager:Landroid/net/VpnManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1, v2}, Landroid/net/VpnManager;->setAlwaysOnVpnPackageForUser(ILjava/lang/String;ZLjava/util/List;)Z

    .line 160
    iget-object v0, p0, Lcom/android/settings/vpn2/AppDialogFragment;->mVpnManager:Landroid/net/VpnManager;

    iget-object p0, p0, Lcom/android/settings/vpn2/AppDialogFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v1, "[Legacy VPN]"

    invoke-virtual {v0, p0, v1, p1}, Landroid/net/VpnManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_1
    return-void
.end method

.method public static show(Landroidx/fragment/app/Fragment;Landroid/content/pm/PackageInfo;Ljava/lang/String;ZZ)V
    .locals 6

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 69
    invoke-static/range {v0 .. v5}, Lcom/android/settings/vpn2/AppDialogFragment;->show(Landroidx/fragment/app/Fragment;Lcom/android/settings/vpn2/AppDialogFragment$Listener;Landroid/content/pm/PackageInfo;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static show(Landroidx/fragment/app/Fragment;Lcom/android/settings/vpn2/AppDialogFragment$Listener;Landroid/content/pm/PackageInfo;Ljava/lang/String;ZZ)V
    .locals 2

    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 78
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "package"

    .line 79
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p2, "label"

    .line 80
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "managing"

    .line 81
    invoke-virtual {v0, p2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "connected"

    .line 82
    invoke-virtual {v0, p2, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 84
    new-instance p2, Lcom/android/settings/vpn2/AppDialogFragment;

    invoke-direct {p2}, Lcom/android/settings/vpn2/AppDialogFragment;-><init>()V

    .line 85
    iput-object p1, p2, Lcom/android/settings/vpn2/AppDialogFragment;->mListener:Lcom/android/settings/vpn2/AppDialogFragment$Listener;

    .line 86
    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 87
    invoke-virtual {p2, p0, p1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 88
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p1, "vpnappdialog"

    invoke-virtual {p2, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x222

    return p0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 130
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 131
    iget-object v0, p0, Lcom/android/settings/vpn2/AppDialogFragment;->mListener:Lcom/android/settings/vpn2/AppDialogFragment$Listener;

    if-eqz v0, :cond_0

    .line 132
    invoke-interface {v0}, Lcom/android/settings/vpn2/AppDialogFragment$Listener;->onCancel()V

    .line 134
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 93
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/vpn2/AppDialogFragment;->mUserManager:Landroid/os/UserManager;

    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/net/VpnManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/VpnManager;

    iput-object p1, p0, Lcom/android/settings/vpn2/AppDialogFragment;->mVpnManager:Landroid/net/VpnManager;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 100
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "label"

    .line 101
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "managing"

    .line 102
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "connected"

    .line 103
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "package"

    .line 104
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageInfo;

    iput-object p1, p0, Lcom/android/settings/vpn2/AppDialogFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_0

    .line 107
    new-instance p1, Lcom/android/settings/vpn2/AppDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/vpn2/AppDialogFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-direct {p1, v1, p0, v2, v0}, Lcom/android/settings/vpn2/AppDialog;-><init>(Landroid/content/Context;Lcom/android/settings/vpn2/AppDialog$Listener;Landroid/content/pm/PackageInfo;Ljava/lang/String;)V

    return-object p1

    .line 110
    :cond_0
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 111
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 112
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0413af

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 113
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0413a8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    if-eqz v2, :cond_1

    .line 115
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppDialogFragment;->isUiRestricted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0413ae

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/settings/vpn2/AppDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn2/AppDialogFragment$1;-><init>(Lcom/android/settings/vpn2/AppDialogFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 124
    :cond_1
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public onForget(Landroid/content/DialogInterface;)V
    .locals 4

    .line 139
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppDialogFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 142
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppDialogFragment;->getUserId()I

    move-result v0

    .line 143
    iget-object v1, p0, Lcom/android/settings/vpn2/AppDialogFragment;->mVpnManager:Landroid/net/VpnManager;

    iget-object v2, p0, Lcom/android/settings/vpn2/AppDialogFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/VpnManager;->setVpnPackageAuthorization(Ljava/lang/String;II)V

    .line 145
    invoke-direct {p0, p1}, Lcom/android/settings/vpn2/AppDialogFragment;->onDisconnect(Landroid/content/DialogInterface;)V

    .line 147
    iget-object p0, p0, Lcom/android/settings/vpn2/AppDialogFragment;->mListener:Lcom/android/settings/vpn2/AppDialogFragment$Listener;

    if-eqz p0, :cond_1

    .line 148
    invoke-interface {p0}, Lcom/android/settings/vpn2/AppDialogFragment$Listener;->onForget()V

    :cond_1
    return-void
.end method
