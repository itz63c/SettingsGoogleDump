.class public Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ScaryWarningDialogFragment.java"


# direct methods
.method public static synthetic $r8$lambda$Ix9L-gZC3FO10-2iclvUoMx2K9g(Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment;Ljava/lang/String;Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment;->lambda$onCreateDialog$0(Ljava/lang/String;Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$JoZydZkq5wVxfqziBWCRZqQcvrw(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment;->lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$0(Ljava/lang/String;Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 71
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 p3, 0x1

    invoke-static {p0, p1, p3}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessController;->setAccess(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 72
    invoke-virtual {p2}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;->refreshUi()Z

    return-void
.end method

.method private static synthetic lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x22a

    return p0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .line 53
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "p"

    .line 55
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "l"

    .line 56
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const p1, 0x7f0415e8

    invoke-virtual {v1, p1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0415e7

    .line 61
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;

    .line 65
    new-instance v4, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 66
    invoke-virtual {v4, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 67
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 68
    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment-$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, v3}, Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment-$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment;Ljava/lang/String;Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;)V

    const p0, 0x7f0401c4

    .line 69
    invoke-virtual {p1, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget-object p1, Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment-$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment-$$ExternalSyntheticLambda1;

    const v0, 0x7f040714

    .line 74
    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 78
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public setPkgInfo(Ljava/lang/String;Ljava/lang/CharSequence;Landroidx/fragment/app/Fragment;)Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment;
    .locals 2

    .line 43
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "p"

    .line 44
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string p2, "l"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 46
    invoke-virtual {p0, p3, p1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 47
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method
