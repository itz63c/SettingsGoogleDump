.class public Lcom/android/settings/sim/ChooseSimActivity;
.super Landroid/app/Activity;
.source "ChooseSimActivity.java"

# interfaces
.implements Lcom/google/android/setupdesign/items/RecyclerItemAdapter$OnItemSelectedListener;
.implements Lcom/android/settings/SidecarFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sim/ChooseSimActivity$DisableableItem;
    }
.end annotation


# instance fields
.field private mEmbeddedSubscriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHasPsim:Z

.field private mIsSwitching:Z

.field private mItemGroup:Lcom/google/android/setupdesign/items/ItemGroup;

.field private mNoPsimContinueToSettings:Z

.field private mRemovableSubscription:Landroid/telephony/SubscriptionInfo;

.field private mSelectedItemIndex:I

.field private mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

.field private mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mEmbeddedSubscriptions:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mRemovableSubscription:Landroid/telephony/SubscriptionInfo;

    return-void
.end method

.method private displaySubscriptions()V
    .locals 9

    const v0, 0x1020002

    .line 219
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d044a

    .line 220
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/GlifRecyclerLayout;

    .line 221
    invoke-virtual {v0}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;

    .line 222
    invoke-virtual {v1, p0}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->setOnItemSelectedListener(Lcom/google/android/setupdesign/items/RecyclerItemAdapter$OnItemSelectedListener;)V

    .line 223
    invoke-virtual {v1}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->getRootItemHierarchy()Lcom/google/android/setupdesign/items/ItemHierarchy;

    move-result-object v1

    check-cast v1, Lcom/google/android/setupdesign/items/ItemGroup;

    iput-object v1, p0, Lcom/android/settings/sim/ChooseSimActivity;->mItemGroup:Lcom/google/android/setupdesign/items/ItemGroup;

    .line 226
    iget-boolean v1, p0, Lcom/android/settings/sim/ChooseSimActivity;->mHasPsim:Z

    const v2, 0x7f040537

    const-string v3, ""

    if-eqz v1, :cond_4

    .line 227
    new-instance v1, Lcom/android/settings/sim/ChooseSimActivity$DisableableItem;

    invoke-direct {v1, p0}, Lcom/android/settings/sim/ChooseSimActivity$DisableableItem;-><init>(Lcom/android/settings/sim/ChooseSimActivity;)V

    const/4 v4, 0x0

    .line 230
    iget-object v5, p0, Lcom/android/settings/sim/ChooseSimActivity;->mRemovableSubscription:Landroid/telephony/SubscriptionInfo;

    if-eqz v5, :cond_0

    .line 233
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 232
    invoke-static {v4, p0}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Ljava/lang/Integer;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 235
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const v4, 0x7f04109e

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_1
    invoke-virtual {v1, v4}, Lcom/google/android/setupdesign/items/Item;->setTitle(Ljava/lang/CharSequence;)V

    .line 237
    iget-boolean v4, p0, Lcom/android/settings/sim/ChooseSimActivity;->mIsSwitching:Z

    const/4 v5, -0x1

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSelectedItemIndex:I

    if-ne v4, v5, :cond_2

    .line 238
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/setupdesign/items/Item;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 241
    :cond_2
    iget-object v4, p0, Lcom/android/settings/sim/ChooseSimActivity;->mRemovableSubscription:Landroid/telephony/SubscriptionInfo;

    .line 242
    invoke-static {p0, v4}, Lcom/android/settings/network/SubscriptionUtil;->getFormattedPhoneNumber(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v4

    .line 243
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v4, v3

    :cond_3
    invoke-virtual {v1, v4}, Lcom/google/android/setupdesign/items/Item;->setSummary(Ljava/lang/CharSequence;)V

    .line 247
    :goto_0
    invoke-virtual {v1, v5}, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->setId(I)V

    .line 248
    iget-object v4, p0, Lcom/android/settings/sim/ChooseSimActivity;->mItemGroup:Lcom/google/android/setupdesign/items/ItemGroup;

    invoke-virtual {v4, v1}, Lcom/google/android/setupdesign/items/ItemGroup;->addChild(Lcom/google/android/setupdesign/items/ItemHierarchy;)V

    :cond_4
    const/4 v1, 0x0

    .line 253
    iget-object v4, p0, Lcom/android/settings/sim/ChooseSimActivity;->mEmbeddedSubscriptions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    .line 254
    new-instance v6, Lcom/android/settings/sim/ChooseSimActivity$DisableableItem;

    invoke-direct {v6, p0}, Lcom/android/settings/sim/ChooseSimActivity$DisableableItem;-><init>(Lcom/android/settings/sim/ChooseSimActivity;)V

    .line 257
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 256
    invoke-static {v7, p0}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Ljava/lang/Integer;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 258
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v7

    :cond_5
    invoke-virtual {v6, v7}, Lcom/google/android/setupdesign/items/Item;->setTitle(Ljava/lang/CharSequence;)V

    .line 259
    iget-boolean v7, p0, Lcom/android/settings/sim/ChooseSimActivity;->mIsSwitching:Z

    if-eqz v7, :cond_6

    iget v7, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSelectedItemIndex:I

    if-ne v7, v1, :cond_6

    .line 260
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/google/android/setupdesign/items/Item;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 262
    :cond_6
    invoke-static {p0, v5}, Lcom/android/settings/network/SubscriptionUtil;->getFormattedPhoneNumber(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v5

    .line 263
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    move-object v5, v3

    :cond_7
    invoke-virtual {v6, v5}, Lcom/google/android/setupdesign/items/Item;->setSummary(Ljava/lang/CharSequence;)V

    :goto_2
    add-int/lit8 v5, v1, 0x1

    .line 265
    invoke-virtual {v6, v1}, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->setId(I)V

    .line 266
    iget-object v1, p0, Lcom/android/settings/sim/ChooseSimActivity;->mItemGroup:Lcom/google/android/setupdesign/items/ItemGroup;

    invoke-virtual {v1, v6}, Lcom/google/android/setupdesign/items/ItemGroup;->addChild(Lcom/google/android/setupdesign/items/ItemHierarchy;)V

    move v1, v5

    goto :goto_1

    .line 270
    :cond_8
    invoke-virtual {v0}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView;

    .line 271
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/HeaderRecyclerView;->getHeader()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 80
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/sim/ChooseSimActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private handleEnableRemovableSimError()V
    .locals 3

    .line 294
    iget v0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSelectedItemIndex:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 295
    :cond_0
    iget-object v2, p0, Lcom/android/settings/sim/ChooseSimActivity;->mItemGroup:Lcom/google/android/setupdesign/items/ItemGroup;

    invoke-virtual {v2, v0}, Lcom/google/android/setupdesign/items/ItemGroup;->getItemAt(I)Lcom/google/android/setupdesign/items/IItem;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/items/Item;

    .line 296
    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/items/Item;->setEnabled(Z)V

    const v2, 0x7f040538

    .line 297
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/setupdesign/items/Item;->setSummary(Ljava/lang/CharSequence;)V

    .line 298
    iput-boolean v1, p0, Lcom/android/settings/sim/ChooseSimActivity;->mIsSwitching:Z

    return-void
.end method

.method private updateSubscriptions()V
    .locals 3

    .line 276
    invoke-static {p0}, Lcom/android/settings/network/SubscriptionUtil;->getSelectableSubscriptionInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 278
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    if-nez v1, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 283
    iget-object v2, p0, Lcom/android/settings/sim/ChooseSimActivity;->mEmbeddedSubscriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 285
    :cond_1
    iput-object v1, p0, Lcom/android/settings/sim/ChooseSimActivity;->mRemovableSubscription:Landroid/telephony/SubscriptionInfo;

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 85
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f060079

    .line 87
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 89
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "has_psim"

    const/4 v2, 0x0

    .line 90
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/sim/ChooseSimActivity;->mHasPsim:Z

    const-string v1, "no_psim_continue_to_settings"

    .line 91
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mNoPsimContinueToSettings:Z

    .line 93
    invoke-direct {p0}, Lcom/android/settings/sim/ChooseSimActivity;->updateSubscriptions()V

    .line 95
    iget-object v0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mEmbeddedSubscriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "ChooseSimActivity"

    const-string v0, "Unable to find available eSIM subscriptions."

    .line 96
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "selected_index"

    .line 102
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSelectedItemIndex:I

    const-string v0, "is_switching"

    .line 103
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/sim/ChooseSimActivity;->mIsSwitching:Z

    :cond_1
    const p1, 0x7f0d0243

    .line 106
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupdesign/GlifLayout;

    const v0, 0x7f0d050e

    .line 107
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 108
    iget-object v1, p0, Lcom/android/settings/sim/ChooseSimActivity;->mEmbeddedSubscriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 109
    iget-boolean v3, p0, Lcom/android/settings/sim/ChooseSimActivity;->mHasPsim:Z

    if-eqz v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    const v3, 0x7f04053b

    .line 112
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    const p1, 0x7f04053a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 113
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-virtual {p0, p1, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-direct {p0}, Lcom/android/settings/sim/ChooseSimActivity;->displaySubscriptions()V

    .line 117
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;->get(Landroid/app/FragmentManager;)Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    .line 119
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->get(Landroid/app/FragmentManager;)Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    return-void
.end method

.method public onItemSelected(Lcom/google/android/setupdesign/items/IItem;)V
    .locals 2

    .line 145
    iget-boolean v0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mIsSwitching:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mIsSwitching:Z

    .line 150
    check-cast p1, Lcom/google/android/setupdesign/items/Item;

    const v0, 0x7f040537

    .line 151
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/setupdesign/items/Item;->setSummary(Ljava/lang/CharSequence;)V

    .line 152
    invoke-virtual {p1}, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->getId()I

    move-result p1

    iput p1, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSelectedItemIndex:I

    const-string v0, "ChooseSimActivity"

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    const-string p1, "Ready to switch to pSIM slot."

    .line 154
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object p0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    invoke-virtual {p0, v1}, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;->run(I)V

    goto :goto_0

    .line 157
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ready to switch to eSIM subscription with index: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSelectedItemIndex:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object p1, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    iget-object v0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mEmbeddedSubscriptions:Ljava/util/ArrayList;

    iget p0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSelectedItemIndex:I

    .line 159
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    .line 158
    invoke-virtual {p1, p0}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->run(I)V

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->removeListener(Lcom/android/settings/SidecarFragment$Listener;)Z

    .line 132
    iget-object v0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->removeListener(Lcom/android/settings/SidecarFragment$Listener;)Z

    .line 133
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 124
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 125
    iget-object v0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->addListener(Lcom/android/settings/SidecarFragment$Listener;)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->addListener(Lcom/android/settings/SidecarFragment$Listener;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 138
    iget v0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSelectedItemIndex:I

    const-string v1, "selected_index"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 139
    iget-boolean v0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mIsSwitching:Z

    const-string v1, "is_switching"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 140
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStateChange(Lcom/android/settings/SidecarFragment;)V
    .locals 4

    .line 165
    iget-object v0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const-string v3, "ChooseSimActivity"

    if-ne p1, v0, :cond_3

    .line 166
    invoke-virtual {v0}, Lcom/android/settings/SidecarFragment;->getState()I

    move-result p1

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    .line 182
    :cond_0
    iget-object p1, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    invoke-virtual {p1}, Lcom/android/settings/SidecarFragment;->reset()V

    const-string p1, "Failed to switch slot in ChooseSubscriptionsActivity."

    .line 183
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-direct {p0}, Lcom/android/settings/sim/ChooseSimActivity;->handleEnableRemovableSimError()V

    goto/16 :goto_0

    .line 168
    :cond_1
    iget-object p1, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    invoke-virtual {p1}, Lcom/android/settings/SidecarFragment;->reset()V

    const-string p1, "Switch slot successfully."

    .line 169
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-class p1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    .line 171
    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->canDisablePhysicalSubscription()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    invoke-static {p0}, Lcom/android/settings/network/SubscriptionUtil;->getFirstRemovableSubscription(Landroid/content/Context;)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 176
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    const/4 v1, 0x1

    .line 175
    invoke-virtual {p1, v0, v1}, Landroid/telephony/SubscriptionManager;->setUiccApplicationsEnabled(IZ)V

    .line 179
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 188
    :cond_3
    iget-object v0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    if-ne p1, v0, :cond_7

    .line 189
    invoke-virtual {v0}, Lcom/android/settings/SidecarFragment;->getState()I

    move-result p1

    if-eq p1, v2, :cond_5

    if-eq p1, v1, :cond_4

    goto :goto_0

    .line 206
    :cond_4
    iget-object p1, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-virtual {p1}, Lcom/android/settings/SidecarFragment;->reset()V

    const-string p1, "Failed to switch subscription in ChooseSubscriptionsActivity."

    .line 207
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object p1, p0, Lcom/android/settings/sim/ChooseSimActivity;->mItemGroup:Lcom/google/android/setupdesign/items/ItemGroup;

    iget v0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSelectedItemIndex:I

    invoke-virtual {p1, v0}, Lcom/google/android/setupdesign/items/ItemGroup;->getItemAt(I)Lcom/google/android/setupdesign/items/IItem;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupdesign/items/Item;

    const/4 v0, 0x0

    .line 209
    invoke-virtual {p1, v0}, Lcom/google/android/setupdesign/items/Item;->setEnabled(Z)V

    const v1, 0x7f040538

    .line 210
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/setupdesign/items/Item;->setSummary(Ljava/lang/CharSequence;)V

    .line 211
    iput-boolean v0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mIsSwitching:Z

    goto :goto_0

    .line 191
    :cond_5
    iget-object p1, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-virtual {p1}, Lcom/android/settings/SidecarFragment;->reset()V

    .line 192
    iget-boolean p1, p0, Lcom/android/settings/sim/ChooseSimActivity;->mNoPsimContinueToSettings:Z

    if-eqz p1, :cond_6

    const-string p0, "mNoPsimContinueToSettings is true which is not supported for now."

    .line 196
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    const-string p1, "User finished selecting eSIM profile."

    .line 201
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_7
    :goto_0
    return-void
.end method
