.class public Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;
.super Ljava/lang/Object;
.source "ImeiInfoDialogController.java"


# static fields
.field static final ID_CDMA_SETTINGS:I = 0x7f0d0132

.field static final ID_GSM_SETTINGS:I = 0x7f0d024d

.field static final ID_IMEI_SV_VALUE:I = 0x7f0d02a6

.field static final ID_IMEI_VALUE:I = 0x7f0d02a7

.field static final ID_MEID_NUMBER_VALUE:I = 0x7f0d0330

.field static final ID_MIN_NUMBER_VALUE:I = 0x7f0d033d

.field static final ID_PRL_VERSION_VALUE:I = 0x7f0d0425


# instance fields
.field private final mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

.field private final mSlotId:I

.field private final mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;I)V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    .line 76
    iput p2, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mSlotId:I

    .line 77
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 78
    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 79
    invoke-virtual {v0, p2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 80
    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 82
    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 83
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    goto :goto_0

    .line 84
    :cond_0
    invoke-direct {p0, p2, v1}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->isValidSlotIndex(ILandroid/telephony/TelephonyManager;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 85
    iput-object v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 87
    iput-object p1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :goto_0
    return-void
.end method

.method private static getTextAsDigits(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4

    .line 57
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 60
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 62
    new-instance v1, Landroid/text/style/TtsSpan$DigitsBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/text/style/TtsSpan$DigitsBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/text/style/TtsSpan$DigitsBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object p0

    const/4 v1, 0x0

    .line 63
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    move-object p0, v0

    :cond_1
    return-object p0
.end method

.method private isValidSlotIndex(ILandroid/telephony/TelephonyManager;)Z
    .locals 0

    if-ltz p1, :cond_0

    .line 169
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p0

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateDialogForCdmaPhone()V
    .locals 4

    .line 107
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->getMeid()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0d0330

    invoke-virtual {v1, v3, v2}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 110
    iget-object v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v2, :cond_0

    .line 111
    iget-object v3, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getCdmaMin(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    const v3, 0x7f0d033d

    .line 110
    invoke-virtual {v1, v3, v2}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->setText(ILjava/lang/CharSequence;)V

    const v1, 0x7f090017

    .line 114
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    const v2, 0x7f0d033c

    const v3, 0x7f04112c

    .line 116
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-virtual {v1, v2, v0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    const v1, 0x7f0d0425

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->isCdmaLteEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mSlotId:I

    .line 122
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->isSimPresent(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 124
    :cond_3
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    const v1, 0x7f0d02a7

    iget-object v2, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v3, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mSlotId:I

    .line 125
    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->getTextAsDigits(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 124
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    const v1, 0x7f0d02a6

    iget-object v2, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget p0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mSlotId:I

    .line 127
    invoke-virtual {v2, p0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->getTextAsDigits(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 126
    invoke-virtual {v0, v1, p0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->setText(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 130
    :cond_4
    iget-object p0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    const v0, 0x7f0d024d

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->removeViewFromScreen(I)V

    :goto_1
    return-void
.end method

.method private updateDialogForGsmPhone()V
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v2, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mSlotId:I

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->getTextAsDigits(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f0d02a7

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v2, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mSlotId:I

    .line 137
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->getTextAsDigits(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f0d02a6

    .line 136
    invoke-virtual {v0, v2, v1}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 139
    iget-object p0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    const v0, 0x7f0d0132

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->removeViewFromScreen(I)V

    return-void
.end method


# virtual methods
.method getCdmaPrlVersion()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method getMeid()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget p0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mSlotId:I

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method isCdmaLteEnabled()Z
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isLteCdmaEvdoGsmWcdmaEnabled()Z

    move-result p0

    return p0
.end method

.method isSimPresent(I)Z
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public populateImeiInfo()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TelephonyManager for this slot is null. Invalid slot? id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mSlotId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ImeiInfoDialog"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 99
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 100
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->updateDialogForCdmaPhone()V

    goto :goto_0

    .line 102
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->updateDialogForGsmPhone()V

    :goto_0
    return-void
.end method
