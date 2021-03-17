.class public Lcom/google/android/settings/biometrics/face/anim/Cutout;
.super Ljava/lang/Object;
.source "Cutout.java"


# direct methods
.method public static createCutoutBitmap(Landroid/content/Context;IIZ)Landroid/graphics/Bitmap;
    .locals 5

    .line 25
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 27
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 29
    new-instance v2, Landroid/graphics/RectF;

    int-to-float v3, p1

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 31
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    const/4 v4, 0x1

    .line 32
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v4, 0x20

    if-ne p0, v4, :cond_0

    if-nez p3, :cond_0

    const/high16 p0, -0x1000000

    .line 36
    invoke-virtual {v3, p0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    .line 38
    invoke-virtual {v3, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const/4 p0, 0x0

    .line 43
    invoke-virtual {v3, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    new-instance p0, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, p0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 45
    div-int/lit8 p1, p1, 0x2

    int-to-float p0, p1

    int-to-float p1, p2

    invoke-virtual {v1, p0, p0, p1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-object v0
.end method
