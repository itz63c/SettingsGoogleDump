.class Landroidx/core/view/WindowInsetsCompat$Impl21;
.super Landroidx/core/view/WindowInsetsCompat$Impl20;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl21"
.end annotation


# static fields
.field private static sStableInsets:Ljava/lang/reflect/Field;

.field private static sViewAttachInfoField:Ljava/lang/reflect/Field;

.field private static sVisibleInsets:Ljava/lang/reflect/Field;


# instance fields
.field private mStableInsets:Landroidx/core/graphics/Insets;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1245
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "mAttachInfo"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/view/WindowInsetsCompat$Impl21;->sViewAttachInfoField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    .line 1246
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-string v0, "android.view.View$AttachInfo"

    .line 1247
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mStableInsets"

    .line 1248
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroidx/core/view/WindowInsetsCompat$Impl21;->sStableInsets:Ljava/lang/reflect/Field;

    .line 1249
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-string v2, "mVisibleInsets"

    .line 1250
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/view/WindowInsetsCompat$Impl21;->sVisibleInsets:Ljava/lang/reflect/Field;

    .line 1251
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get visible insets from AttachInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowInsetsCompat"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method constructor <init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1202
    invoke-direct {p0, p1, p2}, Landroidx/core/view/WindowInsetsCompat$Impl20;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    .line 1199
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl21;->mStableInsets:Landroidx/core/graphics/Insets;

    return-void
.end method

.method constructor <init>(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat$Impl21;)V
    .locals 0

    .line 1206
    invoke-direct {p0, p1, p2}, Landroidx/core/view/WindowInsetsCompat$Impl20;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat$Impl20;)V

    const/4 p1, 0x0

    .line 1199
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl21;->mStableInsets:Landroidx/core/graphics/Insets;

    return-void
.end method

.method public static getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    .line 1260
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1264
    :cond_0
    sget-object v0, Landroidx/core/view/WindowInsetsCompat$Impl21;->sViewAttachInfoField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    sget-object v0, Landroidx/core/view/WindowInsetsCompat$Impl21;->sStableInsets:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    sget-object v0, Landroidx/core/view/WindowInsetsCompat$Impl21;->sVisibleInsets:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1

    goto :goto_0

    .line 1268
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    .line 1270
    :try_start_0
    sget-object v0, Landroidx/core/view/WindowInsetsCompat$Impl21;->sViewAttachInfoField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1272
    sget-object v0, Landroidx/core/view/WindowInsetsCompat$Impl21;->sStableInsets:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 1273
    sget-object v2, Landroidx/core/view/WindowInsetsCompat$Impl21;->sVisibleInsets:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    .line 1275
    new-instance v2, Landroidx/core/view/WindowInsetsCompat$Builder;

    invoke-direct {v2}, Landroidx/core/view/WindowInsetsCompat$Builder;-><init>()V

    .line 1276
    invoke-static {v0}, Landroidx/core/graphics/Insets;->of(Landroid/graphics/Rect;)Landroidx/core/graphics/Insets;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/core/view/WindowInsetsCompat$Builder;->setStableInsets(Landroidx/core/graphics/Insets;)Landroidx/core/view/WindowInsetsCompat$Builder;

    move-result-object v0

    .line 1277
    invoke-static {p0}, Landroidx/core/graphics/Insets;->of(Landroid/graphics/Rect;)Landroidx/core/graphics/Insets;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/core/view/WindowInsetsCompat$Builder;->setSystemWindowInsets(Landroidx/core/graphics/Insets;)Landroidx/core/view/WindowInsetsCompat$Builder;

    move-result-object p0

    .line 1278
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Builder;->build()Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get insets from AttachInfo. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WindowInsetsCompat"

    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-object v1
.end method


# virtual methods
.method consumeStableInsets()Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 1217
    iget-object p0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method consumeSystemWindowInsets()Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 1223
    iget-object p0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method final getStableInsets()Landroidx/core/graphics/Insets;
    .locals 4

    .line 1229
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl21;->mStableInsets:Landroidx/core/graphics/Insets;

    if-nez v0, :cond_0

    .line 1230
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    .line 1231
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v0

    iget-object v1, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    .line 1232
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    iget-object v2, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    .line 1233
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v2

    iget-object v3, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    .line 1234
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v3

    .line 1230
    invoke-static {v0, v1, v2, v3}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl21;->mStableInsets:Landroidx/core/graphics/Insets;

    .line 1236
    :cond_0
    iget-object p0, p0, Landroidx/core/view/WindowInsetsCompat$Impl21;->mStableInsets:Landroidx/core/graphics/Insets;

    return-object p0
.end method

.method isConsumed()Z
    .locals 0

    .line 1211
    iget-object p0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result p0

    return p0
.end method
