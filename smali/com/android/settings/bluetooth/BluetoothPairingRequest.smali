.class public final Lcom/android/settings/bluetooth/BluetoothPairingRequest;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPairingRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    const-string v0, "android.bluetooth.device.action.PAIRING_REQUEST"

    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    .line 40
    :cond_0
    const-class p0, Landroid/os/PowerManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    .line 42
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    const/high16 v1, -0x80000000

    const-string v2, "android.bluetooth.device.extra.PAIRING_VARIANT"

    .line 43
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 46
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 47
    :cond_2
    invoke-static {p1, v3, v2}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->shouldShowDialogInForeground(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v1, v3, :cond_3

    .line 52
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->canBondWithoutDialog()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 53
    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    goto :goto_1

    .line 54
    :cond_3
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    if-eqz p0, :cond_4

    if-eqz v2, :cond_4

    .line 58
    invoke-static {p1, p2, v4}, Lcom/android/settings/bluetooth/BluetoothPairingService;->getPairingDialogIntent(Landroid/content/Context;Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object p0

    .line 61
    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1

    .line 64
    :cond_4
    const-class p0, Lcom/android/settings/bluetooth/BluetoothPairingService;

    invoke-virtual {p2, p1, p0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 65
    sget-object p0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    :cond_5
    :goto_1
    return-void
.end method
