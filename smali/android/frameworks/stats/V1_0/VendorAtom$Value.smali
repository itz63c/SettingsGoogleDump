.class public final Landroid/frameworks/stats/V1_0/VendorAtom$Value;
.super Ljava/lang/Object;
.source "VendorAtom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/frameworks/stats/V1_0/VendorAtom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Value"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/frameworks/stats/V1_0/VendorAtom$Value$hidl_discriminator;
    }
.end annotation


# instance fields
.field private hidl_d:B

.field private hidl_o:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-byte v0, p0, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->hidl_d:B

    const/4 v1, 0x0

    .line 33
    iput-object v1, p0, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->hidl_o:Ljava/lang/Object;

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->hidl_o:Ljava/lang/Object;

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

    .line 125
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/frameworks/stats/V1_0/VendorAtom$Value;

    if-eq v2, v3, :cond_2

    return v1

    .line 128
    :cond_2
    check-cast p1, Landroid/frameworks/stats/V1_0/VendorAtom$Value;

    .line 129
    iget-byte v2, p0, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->hidl_d:B

    iget-byte v3, p1, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->hidl_d:B

    if-eq v2, v3, :cond_3

    return v1

    .line 132
    :cond_3
    iget-object p0, p0, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->hidl_o:Ljava/lang/Object;

    iget-object p1, p1, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->hidl_o:Ljava/lang/Object;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public floatValue()F
    .locals 4

    .line 80
    iget-byte v0, p0, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->hidl_d:B

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 81
    iget-object v0, p0, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    .line 82
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p0, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->hidl_d:B

    .line 85
    invoke-static {p0}, Landroid/frameworks/stats/V1_0/VendorAtom$Value$hidl_discriminator;->getName(B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "), and hidl_o is of type "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :cond_1
    iget-object v0, p0, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const-class v1, Ljava/lang/Float;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 89
    :cond_2
    new-instance p0, Ljava/lang/Error;

    const-string v0, "Union is in a corrupted state."

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    .line 91
    :cond_3
    :goto_1
    iget-object p0, p0, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->hidl_o:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 140
    iget-object v1, p0, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->hidl_o:Ljava/lang/Object;

    .line 141
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-byte p0, p0, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->hidl_d:B

    .line 142
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 140
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public intValue()I
    .locals 4

    .line 40
    iget-byte v0, p0, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->hidl_d:B

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    .line 42
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p0, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->hidl_d:B

    .line 45
    invoke-static {p0}, Landroid/frameworks/stats/V1_0/VendorAtom$Value$hidl_discriminator;->getName(B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "), and hidl_o is of type "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 48
    :cond_1
    iget-object v0, p0, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 49
    :cond_2
    new-instance p0, Ljava/lang/Error;

    const-string v0, "Union is in a corrupted state."

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    .line 51
    :cond_3
    :goto_1
    iget-object p0, p0, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->hidl_o:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public intValue(I)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    iput-byte v0, p0, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->hidl_d:B

    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->hidl_o:Ljava/lang/Object;

    return-void
.end method

.method public longValue()J
    .locals 4

    .line 60
    iget-byte v0, p0, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->hidl_d:B

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 61
    iget-object v0, p0, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    .line 62
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p0, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->hidl_d:B

    .line 65
    invoke-static {p0}, Landroid/frameworks/stats/V1_0/VendorAtom$Value$hidl_discriminator;->getName(B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "), and hidl_o is of type "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :cond_1
    iget-object v0, p0, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const-class v1, Ljava/lang/Long;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 69
    :cond_2
    new-instance p0, Ljava/lang/Error;

    const-string v0, "Union is in a corrupted state."

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    .line 71
    :cond_3
    :goto_1
    iget-object p0, p0, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->hidl_o:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public longValue(J)V
    .locals 1

    const/4 v0, 0x1

    .line 55
    iput-byte v0, p0, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->hidl_d:B

    .line 56
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->hidl_o:Ljava/lang/Object;

    return-void
.end method

.method public stringValue()Ljava/lang/String;
    .locals 4

    .line 100
    iget-byte v0, p0, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->hidl_d:B

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 101
    iget-object v0, p0, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    .line 102
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p0, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->hidl_d:B

    .line 105
    invoke-static {p0}, Landroid/frameworks/stats/V1_0/VendorAtom$Value$hidl_discriminator;->getName(B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "), and hidl_o is of type "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    :cond_1
    iget-object v0, p0, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const-class v1, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 109
    :cond_2
    new-instance p0, Ljava/lang/Error;

    const-string v0, "Union is in a corrupted state."

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    .line 111
    :cond_3
    :goto_1
    iget-object p0, p0, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->hidl_o:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget-byte v1, p0, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->hidl_d:B

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const-string v1, ".stringValue = "

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {p0}, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->stringValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 171
    :cond_0
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown union discriminator (value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p0, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->hidl_d:B

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v1, ".floatValue = "

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {p0}, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->floatValue()F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v1, ".longValue = "

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {p0}, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-string v1, ".intValue = "

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {p0}, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    const-string p0, "}"

    .line 174
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 4

    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    .line 265
    iget-byte v2, p0, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->hidl_d:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 266
    iget-byte v0, p0, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->hidl_d:B

    const-wide/16 v1, 0x8

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    add-long/2addr p2, v1

    .line 280
    invoke-virtual {p0}, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->stringValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    goto :goto_0

    .line 284
    :cond_0
    new-instance p1, Ljava/lang/Error;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown union discriminator (value: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p0, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->hidl_d:B

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    add-long/2addr p2, v1

    .line 276
    invoke-virtual {p0}, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->floatValue()F

    move-result p0

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putFloat(JF)V

    goto :goto_0

    :cond_2
    add-long/2addr p2, v1

    .line 272
    invoke-virtual {p0}, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/os/HwBlob;->putInt64(JJ)V

    goto :goto_0

    :cond_3
    add-long/2addr p2, v1

    .line 268
    invoke-virtual {p0}, Landroid/frameworks/stats/V1_0/VendorAtom$Value;->intValue()I

    move-result p0

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putInt32(JI)V

    :goto_0
    return-void
.end method
