.class public Lcom/google/android/systemui/reversecharging/ReverseChargingMetrics;
.super Ljava/lang/Object;
.source "ReverseChargingMetrics.java"


# static fields
.field private static final ATOM_RECEIVER_TYPE_ID:I

.field private static final ATOM_START_ID:I

.field private static final ATOM_STOP_ID:I

.field private static final ATOM_USER_ACTION_ID:I

.field protected static final DEBUG:Z

.field private static final RDN:Landroid/hardware/google/pixel/vendor/PixelAtoms$ReverseDomainNames;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ReverseChargingMetrics"

    const/4 v1, 0x3

    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/systemui/reversecharging/ReverseChargingMetrics;->DEBUG:Z

    .line 29
    invoke-static {}, Landroid/hardware/google/pixel/vendor/PixelAtoms$ReverseDomainNames;->newBuilder()Landroid/hardware/google/pixel/vendor/PixelAtoms$ReverseDomainNames$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/hardware/google/pixel/vendor/PixelAtoms$ReverseDomainNames;

    sput-object v0, Lcom/google/android/systemui/reversecharging/ReverseChargingMetrics;->RDN:Landroid/hardware/google/pixel/vendor/PixelAtoms$ReverseDomainNames;

    .line 33
    sget-object v0, Landroid/hardware/google/pixel/vendor/PixelAtoms$Ids;->REVERSECHARGING_START_REPORTED:Landroid/hardware/google/pixel/vendor/PixelAtoms$Ids;

    .line 34
    invoke-virtual {v0}, Landroid/hardware/google/pixel/vendor/PixelAtoms$Ids;->getNumber()I

    move-result v0

    sput v0, Lcom/google/android/systemui/reversecharging/ReverseChargingMetrics;->ATOM_START_ID:I

    .line 42
    sget-object v0, Landroid/hardware/google/pixel/vendor/PixelAtoms$Ids;->REVERSECHARGING_STOP_REPORTED:Landroid/hardware/google/pixel/vendor/PixelAtoms$Ids;

    .line 43
    invoke-virtual {v0}, Landroid/hardware/google/pixel/vendor/PixelAtoms$Ids;->getNumber()I

    move-result v0

    sput v0, Lcom/google/android/systemui/reversecharging/ReverseChargingMetrics;->ATOM_STOP_ID:I

    .line 53
    sget-object v0, Landroid/hardware/google/pixel/vendor/PixelAtoms$Ids;->REVERSECHARGING_RECEIVER_TYPE_REPORTED:Landroid/hardware/google/pixel/vendor/PixelAtoms$Ids;

    .line 54
    invoke-virtual {v0}, Landroid/hardware/google/pixel/vendor/PixelAtoms$Ids;->getNumber()I

    move-result v0

    sput v0, Lcom/google/android/systemui/reversecharging/ReverseChargingMetrics;->ATOM_RECEIVER_TYPE_ID:I

    .line 60
    sget-object v0, Landroid/hardware/google/pixel/vendor/PixelAtoms$Ids;->REVERSECHARGING_USER_ACTION_REPORTED:Landroid/hardware/google/pixel/vendor/PixelAtoms$Ids;

    .line 61
    invoke-virtual {v0}, Landroid/hardware/google/pixel/vendor/PixelAtoms$Ids;->getNumber()I

    move-result v0

    sput v0, Lcom/google/android/systemui/reversecharging/ReverseChargingMetrics;->ATOM_USER_ACTION_ID:I

    return-void
.end method

.method private static createVendorAtom(I)Landroid/frameworks/stats/V1_0/VendorAtom;
    .locals 4

    .line 68
    new-instance v0, Landroid/frameworks/stats/V1_0/VendorAtom;

    invoke-direct {v0}, Landroid/frameworks/stats/V1_0/VendorAtom;-><init>()V

    .line 69
    sget-object v1, Lcom/google/android/systemui/reversecharging/ReverseChargingMetrics;->RDN:Landroid/hardware/google/pixel/vendor/PixelAtoms$ReverseDomainNames;

    invoke-virtual {v1}, Landroid/hardware/google/pixel/vendor/PixelAtoms$ReverseDomainNames;->getPixel()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/frameworks/stats/V1_0/VendorAtom;->reverseDomainName:Ljava/lang/String;

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    .line 72
    new-instance v3, Landroid/frameworks/stats/V1_0/VendorAtom$Value;

    invoke-direct {v3}, Landroid/frameworks/stats/V1_0/VendorAtom$Value;-><init>()V

    .line 73
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    :cond_0
    iput-object v1, v0, Landroid/frameworks/stats/V1_0/VendorAtom;->values:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static logLowBatteryThresholdChange(I)V
    .locals 3

    const/4 v0, 0x2

    .line 122
    invoke-static {v0}, Lcom/google/android/systemui/reversecharging/ReverseChargingMetrics;->createVendorAtom(I)Landroid/frameworks/stats/V1_0/VendorAtom;

    move-result-object v0

    .line 123
    sget v1, Lcom/google/android/systemui/reversecharging/ReverseChargingMetrics;->ATOM_USER_ACTION_ID:I

    iput v1, v0, Landroid/frameworks/stats/V1_0/VendorAtom;->atomId:I

    .line 124
    iget-object v1, v0, Landroid/frameworks/stats/V1_0/VendorAtom;->values:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/frameworks/stats/V1_0/VendorAtom$Value;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->intValue(I)V

    .line 125
    iget-object v1, v0, Landroid/frameworks/stats/V1_0/VendorAtom;->values:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/frameworks/stats/V1_0/VendorAtom$Value;

    invoke-virtual {v1, p0}, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->intValue(I)V

    .line 127
    invoke-static {v0}, Lcom/google/android/systemui/reversecharging/ReverseChargingMetrics;->reportVendorAtom(Landroid/frameworks/stats/V1_0/VendorAtom;)V

    return-void
.end method

.method public static logStopEvent(IIJ)V
    .locals 3

    const/4 v0, 0x3

    .line 102
    invoke-static {v0}, Lcom/google/android/systemui/reversecharging/ReverseChargingMetrics;->createVendorAtom(I)Landroid/frameworks/stats/V1_0/VendorAtom;

    move-result-object v0

    .line 103
    sget v1, Lcom/google/android/systemui/reversecharging/ReverseChargingMetrics;->ATOM_STOP_ID:I

    iput v1, v0, Landroid/frameworks/stats/V1_0/VendorAtom;->atomId:I

    .line 104
    iget-object v1, v0, Landroid/frameworks/stats/V1_0/VendorAtom;->values:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/frameworks/stats/V1_0/VendorAtom$Value;

    invoke-virtual {v1, p0}, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->intValue(I)V

    .line 105
    iget-object p0, v0, Landroid/frameworks/stats/V1_0/VendorAtom;->values:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/frameworks/stats/V1_0/VendorAtom$Value;

    invoke-virtual {p0, p1}, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->intValue(I)V

    .line 106
    iget-object p0, v0, Landroid/frameworks/stats/V1_0/VendorAtom;->values:Ljava/util/ArrayList;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/frameworks/stats/V1_0/VendorAtom$Value;

    invoke-virtual {p0, p2, p3}, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->longValue(J)V

    .line 108
    invoke-static {v0}, Lcom/google/android/systemui/reversecharging/ReverseChargingMetrics;->reportVendorAtom(Landroid/frameworks/stats/V1_0/VendorAtom;)V

    return-void
.end method

.method private static reportVendorAtom(Landroid/frameworks/stats/V1_0/VendorAtom;)V
    .locals 3

    const-string v0, "ReverseChargingMetrics"

    .line 81
    :try_start_0
    invoke-static {}, Landroid/frameworks/stats/V1_0/IStats;->getService()Landroid/frameworks/stats/V1_0/IStats;

    move-result-object v1

    .line 82
    invoke-interface {v1, p0}, Landroid/frameworks/stats/V1_0/IStats;->reportVendorAtom(Landroid/frameworks/stats/V1_0/VendorAtom;)V

    .line 83
    sget-boolean v1, Lcom/google/android/systemui/reversecharging/ReverseChargingMetrics;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Report vendor atom OK, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot report vendor atom, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
