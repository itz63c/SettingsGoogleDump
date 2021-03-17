.class public Lcom/google/android/settings/fuelgauge/reversecharging/BottomSheetActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "BottomSheetActivity.java"


# static fields
.field static final REVERSE_CHARGING_SETTINGS:Ljava/lang/String; = "android.settings.REVERSE_CHARGING_SETTINGS"


# instance fields
.field mReverseChargingManager:Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/google/android/settings/fuelgauge/reversecharging/BottomSheetActivity;->onOkClick()V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/view/View;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/google/android/settings/fuelgauge/reversecharging/BottomSheetActivity;->onLearnMoreClick()V

    return-void
.end method

.method private onLearnMoreClick()V
    .locals 2

    .line 53
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.REVERSE_CHARGING_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.settings"

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private onOkClick()V
    .locals 0

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$0$BottomSheetActivity(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/fuelgauge/reversecharging/BottomSheetActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onCreate$1$BottomSheetActivity(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/fuelgauge/reversecharging/BottomSheetActivity;->lambda$onCreate$1(Landroid/view/View;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 29
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    iget-object p1, p0, Lcom/google/android/settings/fuelgauge/reversecharging/BottomSheetActivity;->mReverseChargingManager:Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;

    if-nez p1, :cond_0

    .line 31
    invoke-static {p0}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;->getInstance(Landroid/content/Context;)Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/fuelgauge/reversecharging/BottomSheetActivity;->mReverseChargingManager:Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;

    .line 33
    :cond_0
    iget-object p1, p0, Lcom/google/android/settings/fuelgauge/reversecharging/BottomSheetActivity;->mReverseChargingManager:Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;

    invoke-virtual {p1}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;->isSupportedReverseCharging()Z

    move-result p1

    if-nez p1, :cond_1

    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    const p1, 0x7f0601d6

    .line 37
    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    const p1, 0x7f0d03be

    .line 38
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const v0, 0x7f0d02f4

    .line 39
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0d0588

    .line 40
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d0271

    .line 41
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 42
    new-instance v3, Lcom/google/android/settings/fuelgauge/reversecharging/VideoPreferenceFragment;

    invoke-direct {v3}, Lcom/google/android/settings/fuelgauge/reversecharging/VideoPreferenceFragment;-><init>()V

    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v4

    const v5, 0x7f0d016c

    invoke-virtual {v4, v5, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    .line 44
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 45
    new-instance v3, Lcom/google/android/settings/fuelgauge/reversecharging/-$$Lambda$BottomSheetActivity$uZxxT3sm_8s0RwNrp9lNBO1JWAY;

    invoke-direct {v3, p0}, Lcom/google/android/settings/fuelgauge/reversecharging/-$$Lambda$BottomSheetActivity$uZxxT3sm_8s0RwNrp9lNBO1JWAY;-><init>(Lcom/google/android/settings/fuelgauge/reversecharging/BottomSheetActivity;)V

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    new-instance p1, Lcom/google/android/settings/fuelgauge/reversecharging/-$$Lambda$BottomSheetActivity$MssOraHrq-T3s2aXUvgrKQW8RXM;

    invoke-direct {p1, p0}, Lcom/google/android/settings/fuelgauge/reversecharging/-$$Lambda$BottomSheetActivity$MssOraHrq-T3s2aXUvgrKQW8RXM;-><init>(Lcom/google/android/settings/fuelgauge/reversecharging/BottomSheetActivity;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f040ef1

    .line 47
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 48
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f040ee6

    .line 49
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
