.class final Lcom/android/settings/TetherSettings$EthernetListener;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/net/EthernetManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EthernetListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;


# direct methods
.method public static synthetic $r8$lambda$kRX8w3Z0QzthW-HZxWGz1yOgujQ(Lcom/android/settings/TetherSettings;)V
    .locals 0

    invoke-static {p0}, Lcom/android/settings/TetherSettings$EthernetListener;->lambda$onAvailabilityChanged$0(Lcom/android/settings/TetherSettings;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/settings/TetherSettings;)V
    .locals 0

    .line 624
    iput-object p1, p0, Lcom/android/settings/TetherSettings$EthernetListener;->this$0:Lcom/android/settings/TetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/TetherSettings;Lcom/android/settings/TetherSettings$1;)V
    .locals 0

    .line 624
    invoke-direct {p0, p1}, Lcom/android/settings/TetherSettings$EthernetListener;-><init>(Lcom/android/settings/TetherSettings;)V

    return-void
.end method

.method private static synthetic lambda$onAvailabilityChanged$0(Lcom/android/settings/TetherSettings;)V
    .locals 0

    .line 626
    invoke-static {p0}, Lcom/android/settings/TetherSettings;->access$200(Lcom/android/settings/TetherSettings;)V

    return-void
.end method


# virtual methods
.method public onAvailabilityChanged(Ljava/lang/String;Z)V
    .locals 0

    .line 626
    iget-object p1, p0, Lcom/android/settings/TetherSettings$EthernetListener;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {p1}, Lcom/android/settings/TetherSettings;->access$1000(Lcom/android/settings/TetherSettings;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/TetherSettings$EthernetListener;->this$0:Lcom/android/settings/TetherSettings;

    new-instance p2, Lcom/android/settings/TetherSettings$EthernetListener-$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/settings/TetherSettings$EthernetListener-$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
