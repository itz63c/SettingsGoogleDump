.class public final Landroid/frameworks/stats/V1_0/VendorAtom;
.super Ljava/lang/Object;
.source "VendorAtom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/frameworks/stats/V1_0/VendorAtom$Value;
    }
.end annotation


# instance fields
.field public atomId:I

.field public reverseDomainName:Ljava/lang/String;

.field public values:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/frameworks/stats/V1_0/VendorAtom$Value;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/frameworks/stats/V1_0/VendorAtom;->reverseDomainName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 298
    iput v0, p0, Landroid/frameworks/stats/V1_0/VendorAtom;->atomId:I

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/frameworks/stats/V1_0/VendorAtom;->values:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 312
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/frameworks/stats/V1_0/VendorAtom;

    if-eq v2, v3, :cond_2

    return v1

    .line 315
    :cond_2
    check-cast p1, Landroid/frameworks/stats/V1_0/VendorAtom;

    .line 316
    iget-object v2, p0, Landroid/frameworks/stats/V1_0/VendorAtom;->reverseDomainName:Ljava/lang/String;

    iget-object v3, p1, Landroid/frameworks/stats/V1_0/VendorAtom;->reverseDomainName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 319
    :cond_3
    iget v2, p0, Landroid/frameworks/stats/V1_0/VendorAtom;->atomId:I

    iget v3, p1, Landroid/frameworks/stats/V1_0/VendorAtom;->atomId:I

    if-eq v2, v3, :cond_4

    return v1

    .line 322
    :cond_4
    iget-object p0, p0, Landroid/frameworks/stats/V1_0/VendorAtom;->values:Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/frameworks/stats/V1_0/VendorAtom;->values:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 330
    iget-object v1, p0, Landroid/frameworks/stats/V1_0/VendorAtom;->reverseDomainName:Ljava/lang/String;

    .line 331
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/frameworks/stats/V1_0/VendorAtom;->atomId:I

    .line 332
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object p0, p0, Landroid/frameworks/stats/V1_0/VendorAtom;->values:Ljava/util/ArrayList;

    .line 333
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    .line 330
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 339
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".reverseDomainName = "

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    iget-object v1, p0, Landroid/frameworks/stats/V1_0/VendorAtom;->reverseDomainName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .atomId = "

    .line 342
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    iget v1, p0, Landroid/frameworks/stats/V1_0/VendorAtom;->atomId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .values = "

    .line 344
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    iget-object p0, p0, Landroid/frameworks/stats/V1_0/VendorAtom;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 346
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 8

    const-wide/16 v0, 0x0

    add-long v2, p2, v0

    .line 426
    iget-object v4, p0, Landroid/frameworks/stats/V1_0/VendorAtom;->reverseDomainName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    const-wide/16 v2, 0x10

    add-long/2addr v2, p2

    .line 427
    iget v4, p0, Landroid/frameworks/stats/V1_0/VendorAtom;->atomId:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 429
    iget-object v2, p0, Landroid/frameworks/stats/V1_0/VendorAtom;->values:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-wide/16 v3, 0x18

    add-long/2addr p2, v3

    const-wide/16 v3, 0x8

    add-long/2addr v3, p2

    .line 430
    invoke-virtual {p1, v3, v4, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v3, 0xc

    add-long/2addr v3, p2

    const/4 v5, 0x0

    .line 431
    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 432
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x18

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v5, v2, :cond_0

    .line 434
    iget-object v4, p0, Landroid/frameworks/stats/V1_0/VendorAtom;->values:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/frameworks/stats/V1_0/VendorAtom$Value;

    mul-int/lit8 v6, v5, 0x18

    int-to-long v6, v6

    invoke-virtual {v4, v3, v6, v7}, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    add-long/2addr p2, v0

    .line 436
    invoke-virtual {p1, p2, p3, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 402
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 403
    invoke-virtual {p0, v0, v1, v2}, Landroid/frameworks/stats/V1_0/VendorAtom;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 404
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
