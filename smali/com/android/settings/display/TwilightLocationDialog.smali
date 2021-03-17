.class public Lcom/android/settings/display/TwilightLocationDialog;
.super Ljava/lang/Object;
.source "TwilightLocationDialog.java"


# static fields
.field public static TAG:Ljava/lang/String; = "TwilightLocationDialog"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method static synthetic lambda$show$0(Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 37
    sget-object p1, Lcom/android/settings/display/TwilightLocationDialog;->TAG:Ljava/lang/String;

    const-string p2, "clicked forget"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 39
    const-class p2, Lcom/android/settings/Settings$LocationSettingsActivity;

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 40
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static show(Landroid/content/Context;)V
    .locals 2

    .line 35
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/settings/display/-$$Lambda$TwilightLocationDialog$q7_GV0NdVh_xEtuTJj09KUpG8Jw;

    invoke-direct {v1, p0}, Lcom/android/settings/display/-$$Lambda$TwilightLocationDialog$q7_GV0NdVh_xEtuTJj09KUpG8Jw;-><init>(Landroid/content/Context;)V

    const p0, 0x7f04124a

    .line 36
    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f0404ca

    const/4 v1, 0x0

    .line 42
    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f04124b

    .line 43
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 44
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 45
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
