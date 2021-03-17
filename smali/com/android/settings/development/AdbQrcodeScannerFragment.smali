.class public Lcom/android/settings/development/AdbQrcodeScannerFragment;
.super Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;
.source "AdbQrcodeScannerFragment.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;


# instance fields
.field private mAdbConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

.field private mAdbManager:Landroid/debug/IAdbManager;

.field private mAdbQrCode:Lcom/android/settings/wifi/dpp/AdbQrCode;

.field private mCamera:Lcom/android/settings/wifi/qrcode/QrCamera;

.field private mDecorateView:Lcom/android/settings/wifi/qrcode/QrDecorateView;

.field private mErrorMessage:Landroid/widget/TextView;

.field private final mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mQrCameraView:Landroid/view/View;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTextureView:Landroid/view/TextureView;

.field private mVerifyingTextView:Landroid/widget/TextView;

.field private mVerifyingView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;-><init>()V

    .line 86
    new-instance v0, Lcom/android/settings/development/AdbQrcodeScannerFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/development/AdbQrcodeScannerFragment$1;-><init>(Lcom/android/settings/development/AdbQrcodeScannerFragment;)V

    iput-object v0, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 116
    new-instance v0, Lcom/android/settings/development/AdbQrcodeScannerFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/development/AdbQrcodeScannerFragment$2;-><init>(Lcom/android/settings/development/AdbQrcodeScannerFragment;)V

    iput-object v0, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/development/AdbQrcodeScannerFragment;)Landroid/widget/TextView;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mErrorMessage:Landroid/widget/TextView;

    return-object p0
.end method

.method private destroyCamera()V
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mCamera:Lcom/android/settings/wifi/qrcode/QrCamera;

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v0}, Lcom/android/settings/wifi/qrcode/QrCamera;->stop()V

    const/4 v0, 0x0

    .line 327
    iput-object v0, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mCamera:Lcom/android/settings/wifi/qrcode/QrCamera;

    :cond_0
    return-void
.end method

.method private initCamera(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mCamera:Lcom/android/settings/wifi/qrcode/QrCamera;

    if-nez v0, :cond_0

    .line 298
    new-instance v0, Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/wifi/qrcode/QrCamera;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;)V

    iput-object v0, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mCamera:Lcom/android/settings/wifi/qrcode/QrCamera;

    .line 299
    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/qrcode/QrCamera;->start(Landroid/graphics/SurfaceTexture;)V

    :cond_0
    return-void
.end method

.method private showErrorMessage(I)V
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mHandler:Landroid/os/Handler;

    .line 333
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    .line 332
    invoke-virtual {v0, p1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 334
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method


# virtual methods
.method public getFramePosition(Landroid/util/Size;I)Landroid/graphics/Rect;
    .locals 1

    .line 254
    new-instance p0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getViewSize()Landroid/util/Size;
    .locals 2

    .line 244
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    iget-object p0, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public handleCameraFailure()V
    .locals 0

    .line 292
    invoke-direct {p0}, Lcom/android/settings/development/AdbQrcodeScannerFragment;->destroyCamera()V

    return-void
.end method

.method public handleSuccessfulResult(Ljava/lang/String;)V
    .locals 3

    .line 274
    invoke-direct {p0}, Lcom/android/settings/development/AdbQrcodeScannerFragment;->destroyCamera()V

    .line 275
    iget-object p1, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mDecorateView:Lcom/android/settings/wifi/qrcode/QrDecorateView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/wifi/qrcode/QrDecorateView;->setFocused(Z)V

    .line 276
    iget-object p1, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mQrCameraView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 277
    iget-object p1, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mVerifyingView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 278
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/AdbQrCode;->triggerVibrationForQrCodeRecognition(Landroid/content/Context;)V

    .line 279
    iget-object p1, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mVerifyingTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 281
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mAdbManager:Landroid/debug/IAdbManager;

    iget-object v0, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mAdbConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getSsid()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mAdbConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    .line 282
    invoke-virtual {v2}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getPreSharedKey()Ljava/lang/String;

    move-result-object v2

    .line 281
    invoke-interface {p1, v0, v2}, Landroid/debug/IAdbManager;->enablePairingByQrCode(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "AdbQrcodeScannerFrag"

    const-string v0, "Unable to enable QR code pairing"

    .line 284
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setResult(I)V

    .line 286
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method protected isFooterAvailable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isValid(Ljava/lang/String;)Z
    .locals 1

    .line 261
    :try_start_0
    new-instance v0, Lcom/android/settings/wifi/dpp/AdbQrCode;

    invoke-direct {v0, p1}, Lcom/android/settings/wifi/dpp/AdbQrCode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mAdbQrCode:Lcom/android/settings/wifi/dpp/AdbQrCode;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/AdbQrCode;->getAdbNetworkConfig()Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mAdbConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    const/4 p0, 0x1

    return p0

    :catch_0
    const p1, 0x7f041457

    .line 263
    invoke-direct {p0, p1}, Lcom/android/settings/development/AdbQrcodeScannerFragment;->showErrorMessage(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 214
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 216
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    .line 218
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const p1, 0x7f041459

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 209
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 147
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreate(Landroid/os/Bundle;)V

    .line 149
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "com.android.server.adb.WIRELESS_DEBUG_PAIRING_RESULT"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mIntentFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p0, 0x7f06003c

    const/4 p3, 0x0

    .line 155
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onPause()V
    .locals 2

    .line 190
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onPause()V

    .line 192
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mAdbManager:Landroid/debug/IAdbManager;

    invoke-interface {v0}, Landroid/debug/IAdbManager;->disablePairing()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "AdbQrcodeScannerFrag"

    const-string v1, "Unable to cancel pairing"

    .line 196
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 199
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 182
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    const-string v0, "adb"

    .line 184
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/debug/IAdbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/debug/IAdbManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mAdbManager:Landroid/debug/IAdbManager;

    .line 185
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, p0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 228
    invoke-direct {p0, p1}, Lcom/android/settings/development/AdbQrcodeScannerFragment;->initCamera(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 238
    invoke-direct {p0}, Lcom/android/settings/development/AdbQrcodeScannerFragment;->destroyCamera()V

    const/4 p0, 0x1

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 160
    invoke-super {p0, p1, p2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0d0413

    .line 162
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/TextureView;

    iput-object p2, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mTextureView:Landroid/view/TextureView;

    .line 163
    invoke-virtual {p2, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    const p2, 0x7f0d019e

    .line 165
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/settings/wifi/qrcode/QrDecorateView;

    iput-object p2, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mDecorateView:Lcom/android/settings/wifi/qrcode/QrDecorateView;

    const/4 p2, 0x0

    .line 166
    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->setProgressBarShown(Z)V

    const v0, 0x7f0202e9

    .line 168
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->setHeaderIconImageResource(I)V

    const v0, 0x7f0d0129

    .line 170
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mQrCameraView:Landroid/view/View;

    const v0, 0x7f0d05ca

    .line 171
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mVerifyingView:Landroid/view/View;

    const v0, 0x7f0d05cc

    .line 172
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mVerifyingTextView:Landroid/widget/TextView;

    new-array p2, p2, [Ljava/lang/Object;

    const v0, 0x7f041459

    .line 174
    invoke-virtual {p0, v0, p2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->setHeaderTitle(I[Ljava/lang/Object;)V

    .line 175
    iget-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    const v0, 0x7f040194

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    const p2, 0x7f0d0202

    .line 177
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mErrorMessage:Landroid/widget/TextView;

    return-void
.end method

.method public setTransform(Landroid/graphics/Matrix;)V
    .locals 0

    .line 249
    iget-object p0, p0, Lcom/android/settings/development/AdbQrcodeScannerFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method
