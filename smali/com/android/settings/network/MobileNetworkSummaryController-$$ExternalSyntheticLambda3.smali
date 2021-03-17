.class public final synthetic Lcom/android/settings/network/MobileNetworkSummaryController-$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/MobileNetworkSummaryController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/MobileNetworkSummaryController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkSummaryController-$$ExternalSyntheticLambda3;->f$0:Lcom/android/settings/network/MobileNetworkSummaryController;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkSummaryController-$$ExternalSyntheticLambda3;->f$0:Lcom/android/settings/network/MobileNetworkSummaryController;

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-static {p0, p1}, Lcom/android/settings/network/MobileNetworkSummaryController;->$r8$lambda$FiV_F4PNb9vFFU_7O9auYHl5d_g(Lcom/android/settings/network/MobileNetworkSummaryController;Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
