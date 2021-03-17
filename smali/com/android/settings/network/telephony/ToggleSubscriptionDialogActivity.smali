.class public Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;
.super Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;
.source "ToggleSubscriptionDialogActivity.java"

# interfaces
.implements Lcom/android/settings/SidecarFragment$Listener;
.implements Lcom/android/settings/network/telephony/ConfirmDialogFragment$OnConfirmListener;


# static fields
.field public static final ARG_enable:Ljava/lang/String; = "enable"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mEnable:Z

.field private mEnableMultiSimSidecar:Lcom/android/settings/network/EnableMultiSimSidecar;

.field private mIsEsimOperation:Z

.field private mSubInfo:Landroid/telephony/SubscriptionInfo;

.field private mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

.field private mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

.field private mTelMgr:Landroid/telephony/TelephonyManager;


# direct methods
.method public static synthetic $r8$lambda$Ws98uNIieU2bX2VfdHAI4HoIp2c(Landroid/telephony/UiccSlotInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->lambda$isDsdsConditionSatisfied$0(Landroid/telephony/UiccSlotInfo;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;-><init>()V

    return-void
.end method

.method private getEnableSubscriptionTitle()Ljava/lang/String;
    .locals 4

    .line 410
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-static {v0, p0}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 412
    iget-object v1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f04108b

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 415
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const v0, 0x7f04108c

    .line 413
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getIntent(Landroid/content/Context;IZ)Landroid/content/Intent;
    .locals 2

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "sub_id"

    .line 69
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "enable"

    .line 70
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method private getSwitchDialogBodyMsg(Landroid/telephony/SubscriptionInfo;Z)Ljava/lang/String;
    .locals 4

    .line 428
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-static {v0, p0}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 430
    invoke-static {p1, p0}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_0

    .line 432
    iget-boolean p2, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mIsEsimOperation:Z

    if-eqz p2, :cond_0

    const p2, 0x7f041096

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    aput-object p1, v1, v3

    .line 433
    invoke-virtual {p0, p2, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 437
    :cond_0
    iget-boolean p2, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mIsEsimOperation:Z

    if-eqz p2, :cond_1

    const p2, 0x7f041095

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    aput-object p1, v1, v3

    .line 438
    invoke-virtual {p0, p2, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const p2, 0x7f041097

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    .line 443
    invoke-virtual {p0, p2, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSwitchDialogPosBtnText()Ljava/lang/String;
    .locals 4

    .line 402
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mIsEsimOperation:Z

    if-eqz v0, :cond_0

    const v0, 0x7f041093

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 403
    iget-object v3, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    .line 405
    invoke-static {v3, p0}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    .line 403
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const v0, 0x7f0410da

    .line 406
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getSwitchSubscriptionTitle()Ljava/lang/String;
    .locals 4

    .line 419
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mIsEsimOperation:Z

    if-eqz v0, :cond_0

    const v0, 0x7f041098

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 420
    iget-object v3, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    .line 422
    invoke-static {v3, p0}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    .line 420
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const v0, 0x7f041092

    .line 424
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleEnableMultiSimSidecarStateChange()V
    .locals 3

    .line 263
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mEnableMultiSimSidecar:Lcom/android/settings/network/EnableMultiSimSidecar;

    invoke-virtual {v0}, Lcom/android/settings/SidecarFragment;->getState()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "ToggleSubscriptionDialogActivity"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mEnableMultiSimSidecar:Lcom/android/settings/network/EnableMultiSimSidecar;

    invoke-virtual {v0}, Lcom/android/settings/SidecarFragment;->reset()V

    const-string v0, "Failed to switch to DSDS without rebooting."

    .line 271
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->dismissProgressDialog()V

    const v0, 0x7f0407a0

    .line 274
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f04079f

    .line 275
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 273
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mEnableMultiSimSidecar:Lcom/android/settings/network/EnableMultiSimSidecar;

    invoke-virtual {v0}, Lcom/android/settings/SidecarFragment;->reset()V

    const-string v0, "Successfully switched to DSDS without reboot."

    .line 266
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->handleEnableSubscriptionAfterEnablingDsds()V

    :goto_0
    return-void
.end method

.method private handleEnableSubscriptionAfterEnablingDsds()V
    .locals 3

    .line 281
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mIsEsimOperation:Z

    const-string v1, "ToggleSubscriptionDialogActivity"

    if-eqz v0, :cond_0

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DSDS enabled, start to enable profile: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    iget-object p0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->run(I)V

    return-void

    :cond_0
    const-string v0, "DSDS enabled, start to enable pSIM profile."

    .line 288
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->handleTogglePsimAction()V

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->dismissProgressDialog()V

    .line 291
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private handleSwitchToEuiccSubscriptionSidecarStateChange()V
    .locals 7

    .line 217
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-virtual {v0}, Lcom/android/settings/SidecarFragment;->getState()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "enable"

    const-string v3, "disable"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "ToggleSubscriptionDialogActivity"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_2

    :cond_0
    new-array v0, v5, [Ljava/lang/Object;

    .line 232
    iget-boolean v1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mEnable:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    aput-object v2, v0, v4

    const-string v1, "Failed to %s the eSIM profile."

    .line 231
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-virtual {v0}, Lcom/android/settings/SidecarFragment;->reset()V

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->dismissProgressDialog()V

    const v0, 0x7f040e68

    .line 236
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f040e67

    .line 237
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    new-array v0, v5, [Ljava/lang/Object;

    .line 223
    iget-boolean v1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mEnable:Z

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, v3

    :goto_1
    aput-object v2, v0, v4

    const-string v1, "Successfully %s the eSIM profile."

    .line 221
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-virtual {v0}, Lcom/android/settings/SidecarFragment;->reset()V

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->dismissProgressDialog()V

    .line 226
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_2
    return-void
.end method

.method private handleSwitchToRemovableSlotSidecarStateChange()V
    .locals 3

    .line 243
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    invoke-virtual {v0}, Lcom/android/settings/SidecarFragment;->getState()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "ToggleSubscriptionDialogActivity"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Failed switching to removable slot."

    .line 252
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    invoke-virtual {v0}, Lcom/android/settings/SidecarFragment;->reset()V

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->dismissProgressDialog()V

    const v0, 0x7f04108a

    .line 256
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f041089

    .line 257
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 255
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Successfully switched to removable slot."

    .line 245
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    invoke-virtual {v0}, Lcom/android/settings/SidecarFragment;->reset()V

    .line 247
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->handleTogglePsimAction()V

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->dismissProgressDialog()V

    .line 249
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method private handleTogglePsimAction()V
    .locals 3

    .line 295
    iget-object v0, p0, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->canDisablePhysicalSubscription()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_0

    .line 296
    iget-object v1, p0, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    iget-boolean v2, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mEnable:Z

    invoke-virtual {v1, v0, v2}, Landroid/telephony/SubscriptionManager;->setUiccApplicationsEnabled(IZ)V

    .line 297
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    const-string p0, "ToggleSubscriptionDialogActivity"

    const-string v0, "The device does not support toggling pSIM. It is enough to just enable the removable slot."

    .line 299
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private isDsdsConditionSatisfied()Z
    .locals 5

    .line 450
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ToggleSubscriptionDialogActivity"

    if-eqz v0, :cond_0

    const-string p0, "DSDS is already enabled. Condition not satisfied."

    .line 451
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimSupported()I

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Hardware does not support DSDS."

    .line 455
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 458
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Lcom/android/settings/network/UiccSlotUtil;->getSlotInfos(Landroid/telephony/TelephonyManager;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 460
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v3, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity-$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity-$$ExternalSyntheticLambda0;

    .line 461
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 468
    iget-boolean v3, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mIsEsimOperation:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    const-string p0, "eSIM operation and removable SIM is enabled. DSDS condition satisfied."

    .line 469
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 472
    :cond_2
    iget-object v0, p0, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 473
    invoke-static {v0}, Lcom/android/settings/network/SubscriptionUtil;->getActiveSubscriptions(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v3, Lcom/android/settings/network/SwitchToRemovableSlotSidecar-$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/settings/network/SwitchToRemovableSlotSidecar-$$ExternalSyntheticLambda0;

    .line 474
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 475
    iget-boolean p0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mIsEsimOperation:Z

    if-nez p0, :cond_3

    if-eqz v0, :cond_3

    const-string p0, "Removable SIM operation and eSIM profile is enabled. DSDS condition satisfied."

    .line 476
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_3
    const-string p0, "DSDS condition not satisfied."

    .line 482
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static synthetic lambda$isDsdsConditionSatisfied$0(Landroid/telephony/UiccSlotInfo;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 464
    invoke-virtual {p0}, Landroid/telephony/UiccSlotInfo;->isRemovable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    invoke-virtual {p0}, Landroid/telephony/UiccSlotInfo;->getIsActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    invoke-virtual {p0}, Landroid/telephony/UiccSlotInfo;->getCardStateInfo()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private showDisableSimConfirmDialog()V
    .locals 8

    .line 346
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-static {v0, p0}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 349
    iget-object v1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f040e6a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 352
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const v0, 0x7f040e6b

    .line 350
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v4, v0

    .line 355
    const-class v2, Lcom/android/settings/network/telephony/ConfirmDialogFragment$OnConfirmListener;

    const/4 v3, 0x1

    const/4 v5, 0x0

    const v0, 0x7f0415e1

    .line 361
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v0, 0x7f0404d9

    .line 362
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    .line 355
    invoke-static/range {v1 .. v7}, Lcom/android/settings/network/telephony/ConfirmDialogFragment;->show(Landroid/app/Activity;Ljava/lang/Class;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showEnableDsdsConfirmDialog()V
    .locals 7

    .line 323
    const-class v1, Lcom/android/settings/network/telephony/ConfirmDialogFragment$OnConfirmListener;

    const v0, 0x7f041088

    .line 327
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f041087

    .line 328
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f041086

    .line 329
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v0, 0x7f04108e

    .line 330
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x3

    move-object v0, p0

    .line 323
    invoke-static/range {v0 .. v6}, Lcom/android/settings/network/telephony/ConfirmDialogFragment;->show(Landroid/app/Activity;Ljava/lang/Class;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showEnableSimConfirmDialog()V
    .locals 10

    .line 366
    iget-object v0, p0, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 367
    invoke-static {v0}, Lcom/android/settings/network/SubscriptionUtil;->getActiveSubscriptions(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object v0

    .line 368
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    :goto_0
    const-string v1, "ToggleSubscriptionDialogActivity"

    if-nez v0, :cond_1

    const-string v0, "No active subscriptions available."

    .line 370
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->showNonSwitchSimConfirmDialog()V

    return-void

    :cond_1
    const-string v3, "Found active subscription."

    .line 374
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-boolean v1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mIsEsimOperation:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    .line 376
    :cond_2
    iget-object v1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v2, :cond_3

    .line 377
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->showNonSwitchSimConfirmDialog()V

    return-void

    .line 380
    :cond_3
    const-class v4, Lcom/android/settings/network/telephony/ConfirmDialogFragment$OnConfirmListener;

    const/4 v5, 0x2

    .line 384
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->getSwitchSubscriptionTitle()Ljava/lang/String;

    move-result-object v6

    .line 385
    invoke-direct {p0, v0, v2}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->getSwitchDialogBodyMsg(Landroid/telephony/SubscriptionInfo;Z)Ljava/lang/String;

    move-result-object v7

    .line 386
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->getSwitchDialogPosBtnText()Ljava/lang/String;

    move-result-object v8

    const/high16 v0, 0x1040000

    .line 387
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v3, p0

    .line 380
    invoke-static/range {v3 .. v9}, Lcom/android/settings/network/telephony/ConfirmDialogFragment;->show(Landroid/app/Activity;Ljava/lang/Class;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showEnableSubDialog()V
    .locals 2

    const-string v0, "ToggleSubscriptionDialogActivity"

    const-string v1, "Handle subscription enabling."

    .line 308
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->isDsdsConditionSatisfied()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->showEnableDsdsConfirmDialog()V

    return-void

    .line 313
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mIsEsimOperation:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Toggle on pSIM, no dialog displayed."

    .line 314
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->handleTogglePsimAction()V

    .line 316
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 319
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->showEnableSimConfirmDialog()V

    return-void
.end method

.method private showNonSwitchSimConfirmDialog()V
    .locals 7

    .line 391
    const-class v1, Lcom/android/settings/network/telephony/ConfirmDialogFragment$OnConfirmListener;

    .line 395
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->getEnableSubscriptionTitle()Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f0415e1

    .line 397
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/high16 v0, 0x1040000

    .line 398
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x2

    const/4 v4, 0x0

    move-object v0, p0

    .line 391
    invoke-static/range {v0 .. v6}, Lcom/android/settings/network/telephony/ConfirmDialogFragment;->show(Landroid/app/Activity;Ljava/lang/Class;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showRebootConfirmDialog()V
    .locals 7

    .line 334
    const-class v1, Lcom/android/settings/network/telephony/ConfirmDialogFragment$OnConfirmListener;

    const v0, 0x7f041091

    .line 338
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f041087

    .line 339
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f04108f

    .line 340
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v0, 0x7f0404d9

    .line 341
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x4

    move-object v0, p0

    .line 334
    invoke-static/range {v0 .. v6}, Lcom/android/settings/network/telephony/ConfirmDialogFragment;->show(Landroid/app/Activity;Ljava/lang/Class;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onConfirm(IZ)V
    .locals 7

    const/4 v0, 0x4

    const/4 v1, 0x3

    if-nez p2, :cond_0

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    .line 152
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const/4 v2, -0x1

    const/4 v3, 0x1

    const-string v4, "ToggleSubscriptionDialogActivity"

    if-eq p1, v3, :cond_8

    const v5, 0x7f04108d

    const/4 v6, 0x2

    if-eq p1, v6, :cond_6

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_1

    .line 211
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unrecognized confirmation dialog tag: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    if-nez p2, :cond_2

    const-string p1, "User cancel the dialog to reboot to enable DSDS."

    .line 187
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->showEnableSimConfirmDialog()V

    return-void

    :cond_2
    const-string p1, "User confirmed reboot to enable DSDS."

    .line 191
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-static {p0, v3}, Lcom/android/settings/sim/SimActivationNotifier;->setShowSimSettingsNotification(Landroid/content/Context;Z)V

    .line 193
    iget-object p0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v6}, Landroid/telephony/TelephonyManager;->switchMultiSimConfig(I)V

    goto/16 :goto_0

    :cond_3
    if-nez p2, :cond_4

    const-string p1, "User cancel the dialog to enable DSDS."

    .line 171
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->showEnableSimConfirmDialog()V

    return-void

    .line 175
    :cond_4
    iget-object p1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->doesSwitchMultiSimConfigTriggerReboot()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "Device does not support reboot free DSDS."

    .line 176
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->showRebootConfirmDialog()V

    return-void

    :cond_5
    const-string p1, "Enabling DSDS without rebooting."

    .line 180
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 181
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->showProgressDialog(Ljava/lang/String;)V

    .line 183
    iget-object p0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mEnableMultiSimSidecar:Lcom/android/settings/network/EnableMultiSimSidecar;

    invoke-virtual {p0, v6}, Lcom/android/settings/network/EnableMultiSimSidecar;->run(I)V

    goto :goto_0

    :cond_6
    const-string p1, "User confirmed to enable the subscription."

    .line 196
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-boolean p1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mIsEsimOperation:Z

    if-eqz p1, :cond_7

    const p1, 0x7f041094

    new-array p2, v3, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 198
    iget-object v1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    .line 201
    invoke-static {v1, p0}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, p2, v0

    .line 199
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 198
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->showProgressDialog(Ljava/lang/String;)V

    .line 203
    iget-object p1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    iget-object p0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->run(I)V

    return-void

    .line 207
    :cond_7
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 206
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->showProgressDialog(Ljava/lang/String;)V

    .line 208
    iget-object p0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    invoke-virtual {p0, v2}, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;->run(I)V

    goto :goto_0

    .line 158
    :cond_8
    iget-boolean p1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mIsEsimOperation:Z

    if-eqz p1, :cond_9

    const-string p1, "Disabling the eSIM profile."

    .line 159
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f040e69

    .line 161
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 160
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->showProgressDialog(Ljava/lang/String;)V

    .line 162
    iget-object p0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-virtual {p0, v2}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->run(I)V

    return-void

    :cond_9
    const-string p1, "Disabling the pSIM profile."

    .line 166
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->handleTogglePsimAction()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 84
    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sub_id"

    const/4 v2, -0x1

    .line 87
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 88
    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 90
    const-class v2, Landroid/os/UserManager;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 91
    invoke-virtual {v2}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v2

    const-string v3, "ToggleSubscriptionDialogActivity"

    if-nez v2, :cond_0

    const-string p1, "It is not the admin user. Unable to toggle subscription."

    .line 92
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 97
    :cond_0
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "The subscription id is not usable."

    .line 98
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 103
    :cond_1
    iget-object v2, p0, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {v2, v1}, Lcom/android/settings/network/SubscriptionUtil;->getSubById(Landroid/telephony/SubscriptionManager;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 104
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mIsEsimOperation:Z

    .line 106
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->get(Landroid/app/FragmentManager;)Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    .line 107
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;->get(Landroid/app/FragmentManager;)Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    .line 108
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/network/EnableMultiSimSidecar;->get(Landroid/app/FragmentManager;)Lcom/android/settings/network/EnableMultiSimSidecar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mEnableMultiSimSidecar:Lcom/android/settings/network/EnableMultiSimSidecar;

    const-string v1, "enable"

    .line 109
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mEnable:Z

    if-nez p1, :cond_4

    if-eqz v0, :cond_3

    .line 113
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->showEnableSubDialog()V

    goto :goto_1

    .line 115
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->showDisableSimConfirmDialog()V

    :cond_4
    :goto_1
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mEnableMultiSimSidecar:Lcom/android/settings/network/EnableMultiSimSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->removeListener(Lcom/android/settings/SidecarFragment$Listener;)Z

    .line 131
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->removeListener(Lcom/android/settings/SidecarFragment$Listener;)Z

    .line 132
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->removeListener(Lcom/android/settings/SidecarFragment$Listener;)Z

    .line 133
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 122
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 123
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->addListener(Lcom/android/settings/SidecarFragment$Listener;)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->addListener(Lcom/android/settings/SidecarFragment$Listener;)V

    .line 125
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mEnableMultiSimSidecar:Lcom/android/settings/network/EnableMultiSimSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->addListener(Lcom/android/settings/SidecarFragment$Listener;)V

    return-void
.end method

.method public onStateChange(Lcom/android/settings/SidecarFragment;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    if-ne p1, v0, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->handleSwitchToEuiccSubscriptionSidecarStateChange()V

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    if-ne p1, v0, :cond_1

    .line 141
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->handleSwitchToRemovableSlotSidecarStateChange()V

    goto :goto_0

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->mEnableMultiSimSidecar:Lcom/android/settings/network/EnableMultiSimSidecar;

    if-ne p1, v0, :cond_2

    .line 143
    invoke-direct {p0}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->handleEnableMultiSimSidecarStateChange()V

    :cond_2
    :goto_0
    return-void
.end method
