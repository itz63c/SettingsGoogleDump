.class public Lcom/android/settings/sim/SwitchToEsimConfirmDialogActivity;
.super Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;
.source "SwitchToEsimConfirmDialogActivity.java"

# interfaces
.implements Lcom/android/settings/SidecarFragment$Listener;
.implements Lcom/android/settings/network/telephony/ConfirmDialogFragment$OnConfirmListener;


# instance fields
.field private mSubToEnabled:Landroid/telephony/SubscriptionInfo;

.field private mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/android/settings/sim/SwitchToEsimConfirmDialogActivity;->mSubToEnabled:Landroid/telephony/SubscriptionInfo;

    return-void
.end method


# virtual methods
.method public onConfirm(IZ)V
    .locals 2

    if-nez p2, :cond_0

    const p1, 0x7f0411ee

    .line 108
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f0411ed

    .line 109
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 106
    invoke-static {p0, p1, p2}, Lcom/android/settings/network/telephony/AlertDialogFragment;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "SwitchToEsimConfirmDialogActivity"

    const-string p2, "User confirmed to switch to embedded slot."

    .line 112
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object p1, p0, Lcom/android/settings/sim/SwitchToEsimConfirmDialogActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    iget-object p2, p0, Lcom/android/settings/sim/SwitchToEsimConfirmDialogActivity;->mSubToEnabled:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->run(I)V

    const p1, 0x7f041094

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 114
    iget-object v1, p0, Lcom/android/settings/sim/SwitchToEsimConfirmDialogActivity;->mSubToEnabled:Landroid/telephony/SubscriptionInfo;

    .line 117
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, p2, v0

    .line 115
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 114
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->showProgressDialog(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 47
    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sub_to_enable"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    iput-object v0, p0, Lcom/android/settings/sim/SwitchToEsimConfirmDialogActivity;->mSubToEnabled:Landroid/telephony/SubscriptionInfo;

    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->get(Landroid/app/FragmentManager;)Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/SwitchToEsimConfirmDialogActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    .line 53
    iget-object v0, p0, Lcom/android/settings/sim/SwitchToEsimConfirmDialogActivity;->mSubToEnabled:Landroid/telephony/SubscriptionInfo;

    if-nez v0, :cond_0

    const-string p1, "SwitchToEsimConfirmDialogActivity"

    const-string v0, "Cannot find SIM to enable."

    .line 54
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 60
    const-class v2, Lcom/android/settings/network/telephony/ConfirmDialogFragment$OnConfirmListener;

    const/4 v3, 0x1

    const p1, 0x7f0411f0

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    .line 64
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {p0, p1, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const p1, 0x7f0411ef

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/sim/SwitchToEsimConfirmDialogActivity;->mSubToEnabled:Landroid/telephony/SubscriptionInfo;

    .line 65
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const p1, 0x7f040d7a

    .line 66
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const p1, 0x7f0404d9

    .line 67
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    .line 60
    invoke-static/range {v1 .. v7}, Lcom/android/settings/network/telephony/ConfirmDialogFragment;->show(Landroid/app/Activity;Ljava/lang/Class;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/settings/sim/SwitchToEsimConfirmDialogActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->removeListener(Lcom/android/settings/SidecarFragment$Listener;)Z

    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 74
    iget-object v0, p0, Lcom/android/settings/sim/SwitchToEsimConfirmDialogActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->addListener(Lcom/android/settings/SidecarFragment$Listener;)V

    return-void
.end method

.method public onStateChange(Lcom/android/settings/SidecarFragment;)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/android/settings/sim/SwitchToEsimConfirmDialogActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    if-ne p1, v0, :cond_2

    .line 86
    invoke-virtual {v0}, Lcom/android/settings/SidecarFragment;->getState()I

    move-result p1

    const/4 v0, 0x2

    const-string v1, "SwitchToEsimConfirmDialogActivity"

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/android/settings/sim/SwitchToEsimConfirmDialogActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-virtual {p1}, Lcom/android/settings/SidecarFragment;->reset()V

    const-string p1, "Failed switching to eSIM slot."

    .line 95
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->dismissProgressDialog()V

    .line 97
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 88
    :cond_1
    iget-object p1, p0, Lcom/android/settings/sim/SwitchToEsimConfirmDialogActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-virtual {p1}, Lcom/android/settings/SidecarFragment;->reset()V

    const-string p1, "Successfully switched to eSIM slot."

    .line 89
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SubscriptionActionDialogActivity;->dismissProgressDialog()V

    .line 91
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method
