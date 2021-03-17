.class public Lcom/android/settings/development/AdbWirelessDialogController;
.super Ljava/lang/Object;
.source "AdbWirelessDialogController.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFailedMsg:Landroid/widget/TextView;

.field private mIpAddr:Landroid/widget/TextView;

.field private mMode:I

.field private mSixDigitCode:Landroid/widget/TextView;

.field private final mUi:Lcom/android/settings/development/AdbWirelessDialogUiBase;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/settings/development/AdbWirelessDialogUiBase;Landroid/view/View;I)V
    .locals 5

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/settings/development/AdbWirelessDialogController;->mUi:Lcom/android/settings/development/AdbWirelessDialogUiBase;

    .line 51
    iput-object p2, p0, Lcom/android/settings/development/AdbWirelessDialogController;->mView:Landroid/view/View;

    .line 52
    iput p3, p0, Lcom/android/settings/development/AdbWirelessDialogController;->mMode:I

    .line 54
    invoke-interface {p1}, Lcom/android/settings/development/AdbWirelessDialogUiBase;->getContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/development/AdbWirelessDialogController;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0d03d7

    .line 57
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/development/AdbWirelessDialogController;->mSixDigitCode:Landroid/widget/TextView;

    const v0, 0x7f0d02bd

    .line 58
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/development/AdbWirelessDialogController;->mIpAddr:Landroid/widget/TextView;

    .line 60
    iget v0, p0, Lcom/android/settings/development/AdbWirelessDialogController;->mMode:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    const v3, 0x7f040d7a

    const v4, 0x7f04018b

    if-eq v0, v2, :cond_1

    const/4 p0, 0x3

    if-eq v0, p0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    invoke-interface {p1, v4}, Lcom/android/settings/development/AdbWirelessDialogUiBase;->setTitle(I)V

    const p0, 0x7f0d02dd

    .line 78
    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/settings/development/AdbWirelessDialogUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const v0, 0x7f04018a

    .line 69
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-interface {p1, v4}, Lcom/android/settings/development/AdbWirelessDialogUiBase;->setTitle(I)V

    const v2, 0x7f0d02da

    .line 71
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0d03d9

    .line 72
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/development/AdbWirelessDialogController;->mFailedMsg:Landroid/widget/TextView;

    .line 73
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/settings/development/AdbWirelessDialogUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const p0, 0x7f04018d

    .line 62
    invoke-virtual {p3, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 63
    invoke-interface {p1, p0}, Lcom/android/settings/development/AdbWirelessDialogUiBase;->setTitle(Ljava/lang/CharSequence;)V

    const p0, 0x7f0d02db

    .line 64
    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    const p0, 0x7f0404d9

    .line 65
    invoke-virtual {p3, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/settings/development/AdbWirelessDialogUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    .line 66
    invoke-interface {p1, v1}, Lcom/android/settings/development/AdbWirelessDialogUiBase;->setCanceledOnTouchOutside(Z)V

    :goto_0
    const p0, 0x7f0d02d3

    .line 84
    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method


# virtual methods
.method public setIpAddr(Ljava/lang/String;)V
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/settings/development/AdbWirelessDialogController;->mIpAddr:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPairingCode(Ljava/lang/String;)V
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/settings/development/AdbWirelessDialogController;->mSixDigitCode:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
