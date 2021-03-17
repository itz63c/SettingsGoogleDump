.class public Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;
.super Landroidx/fragment/app/Fragment;
.source "FaceEnrollSidecar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$QueuedEnrollmentError;,
        Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$QueuedEnrollmentHelp;,
        Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$QueuedEnrollmentProgress;,
        Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$QueuedEvent;,
        Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$PreviewSurfaceProvider;,
        Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$Listener;
    }
.end annotation


# instance fields
.field private mDisabledFeatures:[I

.field private mDone:Z

.field private mEnrolling:Z

.field private final mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

.field private mEnrollmentCancel:Landroid/os/CancellationSignal;

.field private mEnrollmentRemaining:I

.field private mEnrollmentSteps:I

.field private mEnrollmentTypeVendorCode:I

.field private mFaceManager:Landroid/hardware/face/FaceManager;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$Listener;

.field private mPreviewSurfaceProvider:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$PreviewSurfaceProvider;

.field private mQueuedEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$QueuedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldManagePreview:Z

.field private mSingleFromMulti:Z

.field private final mStartEnrollRunnable:Ljava/lang/Runnable;

.field private mTalkbackEnabled:Z

.field private final mTimeoutRunnable:Ljava/lang/Runnable;

.field private mToken:[B

.field private mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 173
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, -0x1

    .line 77
    iput v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mEnrollmentSteps:I

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mEnrollmentRemaining:I

    .line 82
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mHandler:Landroid/os/Handler;

    .line 91
    iput v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mEnrollmentTypeVendorCode:I

    .line 139
    new-instance v0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$1;

    invoke-direct {v0, p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$1;-><init>(Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;)V

    iput-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 146
    new-instance v0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$2;

    invoke-direct {v0, p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$2;-><init>(Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;)V

    iput-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mStartEnrollRunnable:Ljava/lang/Runnable;

    .line 155
    new-instance v0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$3;

    invoke-direct {v0, p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$3;-><init>(Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;)V

    iput-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mQueuedEvents:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mEnrolling:Z

    return p0
.end method

.method private logEnrollmentError()V
    .locals 2

    .line 428
    iget v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mEnrollmentTypeVendorCode:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 444
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mTalkbackEnabled:Z

    if-eqz v0, :cond_1

    .line 445
    iget p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mUserId:I

    const/16 v0, 0x489

    invoke-static {p0, v0}, Lcom/google/android/settings/biometrics/face/FaceUtils;->writeVendorLog(II)V

    goto :goto_0

    .line 447
    :cond_1
    iget p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mUserId:I

    const/16 v0, 0x486

    invoke-static {p0, v0}, Lcom/google/android/settings/biometrics/face/FaceUtils;->writeVendorLog(II)V

    goto :goto_0

    .line 437
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mTalkbackEnabled:Z

    if-eqz v0, :cond_3

    .line 438
    iget p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mUserId:I

    const/16 v0, 0x483

    invoke-static {p0, v0}, Lcom/google/android/settings/biometrics/face/FaceUtils;->writeVendorLog(II)V

    goto :goto_0

    .line 440
    :cond_3
    iget p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mUserId:I

    const/16 v0, 0x47c

    invoke-static {p0, v0}, Lcom/google/android/settings/biometrics/face/FaceUtils;->writeVendorLog(II)V

    goto :goto_0

    .line 430
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mTalkbackEnabled:Z

    if-eqz v0, :cond_5

    .line 431
    iget p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mUserId:I

    const/16 v0, 0x480

    invoke-static {p0, v0}, Lcom/google/android/settings/biometrics/face/FaceUtils;->writeVendorLog(II)V

    goto :goto_0

    .line 433
    :cond_5
    iget p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mUserId:I

    const/16 v0, 0x479

    invoke-static {p0, v0}, Lcom/google/android/settings/biometrics/face/FaceUtils;->writeVendorLog(II)V

    :goto_0
    return-void
.end method

.method private logEnrollmentSuccess(Z)V
    .locals 1

    .line 391
    iget v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mEnrollmentTypeVendorCode:I

    if-eqz v0, :cond_4

    const/4 p1, 0x1

    if-eq v0, p1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 416
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mTalkbackEnabled:Z

    if-eqz p1, :cond_1

    .line 417
    iget p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mUserId:I

    const/16 p1, 0x488

    invoke-static {p0, p1}, Lcom/google/android/settings/biometrics/face/FaceUtils;->writeVendorLog(II)V

    goto :goto_0

    .line 419
    :cond_1
    iget p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mUserId:I

    const/16 p1, 0x485

    invoke-static {p0, p1}, Lcom/google/android/settings/biometrics/face/FaceUtils;->writeVendorLog(II)V

    goto :goto_0

    .line 409
    :cond_2
    iget-boolean p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mTalkbackEnabled:Z

    if-eqz p1, :cond_3

    .line 410
    iget p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mUserId:I

    const/16 p1, 0x482

    invoke-static {p0, p1}, Lcom/google/android/settings/biometrics/face/FaceUtils;->writeVendorLog(II)V

    goto :goto_0

    .line 412
    :cond_3
    iget p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mUserId:I

    const/16 p1, 0x47b

    invoke-static {p0, p1}, Lcom/google/android/settings/biometrics/face/FaceUtils;->writeVendorLog(II)V

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_6

    .line 394
    iget-boolean p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mTalkbackEnabled:Z

    if-eqz p1, :cond_5

    .line 395
    iget p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mUserId:I

    const/16 p1, 0x47e

    invoke-static {p0, p1}, Lcom/google/android/settings/biometrics/face/FaceUtils;->writeVendorLog(II)V

    goto :goto_0

    .line 397
    :cond_5
    iget p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mUserId:I

    const/16 p1, 0x477

    invoke-static {p0, p1}, Lcom/google/android/settings/biometrics/face/FaceUtils;->writeVendorLog(II)V

    goto :goto_0

    .line 400
    :cond_6
    iget-boolean p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mTalkbackEnabled:Z

    if-eqz p1, :cond_7

    .line 401
    iget p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mUserId:I

    const/16 p1, 0x47f

    invoke-static {p0, p1}, Lcom/google/android/settings/biometrics/face/FaceUtils;->writeVendorLog(II)V

    goto :goto_0

    .line 403
    :cond_7
    iget p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mUserId:I

    const/16 p1, 0x478

    invoke-static {p0, p1}, Lcom/google/android/settings/biometrics/face/FaceUtils;->writeVendorLog(II)V

    :goto_0
    return-void
.end method

.method private logEnrollmentTimeout()V
    .locals 2

    .line 363
    iget v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mEnrollmentTypeVendorCode:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 379
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mTalkbackEnabled:Z

    if-eqz v0, :cond_1

    .line 380
    iget p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mUserId:I

    const/16 v0, 0x487

    invoke-static {p0, v0}, Lcom/google/android/settings/biometrics/face/FaceUtils;->writeVendorLog(II)V

    goto :goto_0

    .line 382
    :cond_1
    iget p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mUserId:I

    const/16 v0, 0x484

    invoke-static {p0, v0}, Lcom/google/android/settings/biometrics/face/FaceUtils;->writeVendorLog(II)V

    goto :goto_0

    .line 372
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mTalkbackEnabled:Z

    if-eqz v0, :cond_3

    .line 373
    iget p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mUserId:I

    const/16 v0, 0x481

    invoke-static {p0, v0}, Lcom/google/android/settings/biometrics/face/FaceUtils;->writeVendorLog(II)V

    goto :goto_0

    .line 375
    :cond_3
    iget p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mUserId:I

    const/16 v0, 0x47a

    invoke-static {p0, v0}, Lcom/google/android/settings/biometrics/face/FaceUtils;->writeVendorLog(II)V

    goto :goto_0

    .line 365
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mTalkbackEnabled:Z

    if-eqz v0, :cond_5

    .line 366
    iget p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mUserId:I

    const/16 v0, 0x47d

    invoke-static {p0, v0}, Lcom/google/android/settings/biometrics/face/FaceUtils;->writeVendorLog(II)V

    goto :goto_0

    .line 368
    :cond_5
    iget p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mUserId:I

    const/16 v0, 0x476

    invoke-static {p0, v0}, Lcom/google/android/settings/biometrics/face/FaceUtils;->writeVendorLog(II)V

    :goto_0
    return-void
.end method

.method private updateSettingsCache()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    move v3, v1

    move v4, v3

    .line 261
    :goto_0
    iget-object v5, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mDisabledFeatures:[I

    array-length v6, v5

    if-ge v2, v6, :cond_2

    .line 262
    aget v6, v5, v2

    if-ne v6, v1, :cond_0

    move v3, v0

    goto :goto_1

    .line 264
    :cond_0
    aget v5, v5, v2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    move v4, v0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 270
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 271
    iget v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mUserId:I

    const-string v2, "face_unlock_attention_required"

    .line 270
    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 272
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 273
    iget p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mUserId:I

    const-string v1, "face_unlock_diversity_required"

    .line 272
    invoke-static {v0, v1, v4, p0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method


# virtual methods
.method public cancelEnrollment()Z
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 278
    iget-boolean v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mEnrolling:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 280
    iput-boolean v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mEnrolling:Z

    const/4 v0, -0x1

    .line 281
    iput v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mEnrollmentSteps:I

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method init([IZZZ)V
    .locals 1

    .line 179
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mDisabledFeatures:[I

    .line 180
    iput-boolean p2, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mSingleFromMulti:Z

    .line 181
    iput-boolean p3, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mTalkbackEnabled:Z

    .line 182
    iput-boolean p4, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mShouldManagePreview:Z

    return-void
.end method

.method public isEnrolling()Z
    .locals 0

    .line 345
    iget-boolean p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mEnrolling:Z

    return p0
.end method

.method public logEnrollmentEnded(IZ)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 357
    :cond_0
    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->logEnrollmentError()V

    goto :goto_0

    .line 354
    :cond_1
    invoke-direct {p0, p2}, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->logEnrollmentSuccess(Z)V

    goto :goto_0

    .line 351
    :cond_2
    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->logEnrollmentTimeout()V

    :goto_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    .line 193
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 194
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "hw_auth_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mToken:[B

    .line 196
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.USER_ID"

    const/16 v2, -0x2710

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mUserId:I

    .line 197
    const-class v0, Landroid/hardware/face/FaceManager;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/face/FaceManager;

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mFaceManager:Landroid/hardware/face/FaceManager;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 187
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 188
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    return-void
.end method

.method protected onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mListener:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$Listener;

    if-eqz v0, :cond_0

    .line 310
    invoke-interface {v0, p1, p2}, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$Listener;->onEnrollmentError(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mQueuedEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$QueuedEnrollmentError;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$QueuedEnrollmentError;-><init>(Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 p1, 0x0

    .line 314
    iput-boolean p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mEnrolling:Z

    return-void
.end method

.method protected onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mListener:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$Listener;

    if-eqz v0, :cond_0

    .line 302
    invoke-interface {v0, p1, p2}, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$Listener;->onEnrollmentHelp(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mQueuedEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$QueuedEnrollmentHelp;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$QueuedEnrollmentHelp;-><init>(Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method protected onEnrollmentProgress(I)V
    .locals 3

    .line 288
    iget v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mEnrollmentSteps:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 289
    iput p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mEnrollmentSteps:I

    .line 291
    :cond_0
    iput p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mEnrollmentRemaining:I

    if-nez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 292
    :goto_0
    iput-boolean v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mDone:Z

    .line 293
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mListener:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$Listener;

    if-eqz v0, :cond_2

    .line 294
    iget p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mEnrollmentSteps:I

    invoke-interface {v0, p0, p1}, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$Listener;->onEnrollmentProgressChange(II)V

    goto :goto_1

    .line 296
    :cond_2
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mQueuedEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$QueuedEnrollmentProgress;

    iget v2, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mEnrollmentSteps:I

    invoke-direct {v1, p0, v2, p1}, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$QueuedEnrollmentProgress;-><init>(Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 202
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 203
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mStartEnrollRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2ee

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 208
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 209
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mStartEnrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 211
    invoke-virtual {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->cancelEnrollment()Z

    :cond_0
    return-void
.end method

.method public setListener(Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$Listener;)V
    .locals 2

    .line 318
    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mListener:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$Listener;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 320
    :goto_0
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mQueuedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mQueuedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$QueuedEvent;

    .line 322
    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mListener:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$Listener;

    invoke-virtual {v0, v1}, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$QueuedEvent;->send(Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$Listener;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 324
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mQueuedEvents:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method

.method setPreviewSurfaceProvider(Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$PreviewSurfaceProvider;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mPreviewSurfaceProvider:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$PreviewSurfaceProvider;

    return-void
.end method

.method protected startEnrollment()V
    .locals 10

    .line 216
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, -0x1

    .line 217
    iput v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mEnrollmentSteps:I

    .line 218
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    const/4 v0, 0x1

    .line 219
    iput-boolean v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mEnrolling:Z

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    .line 222
    :goto_0
    iget-object v4, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mDisabledFeatures:[I

    array-length v5, v4

    const/4 v6, 0x2

    if-ge v2, v5, :cond_1

    .line 223
    aget v4, v4, v2

    if-ne v4, v6, :cond_0

    move v3, v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 229
    :cond_1
    iget-boolean v2, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mSingleFromMulti:Z

    if-eqz v2, :cond_2

    .line 230
    iput v6, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mEnrollmentTypeVendorCode:I

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    .line 232
    iput v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mEnrollmentTypeVendorCode:I

    goto :goto_1

    .line 234
    :cond_3
    iput v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mEnrollmentTypeVendorCode:I

    .line 237
    :goto_1
    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->updateSettingsCache()V

    const/4 v0, 0x0

    .line 240
    iget-boolean v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mShouldManagePreview:Z

    if-nez v1, :cond_5

    .line 241
    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mPreviewSurfaceProvider:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$PreviewSurfaceProvider;

    const-string v2, "FaceEnrollSidecar"

    if-nez v1, :cond_4

    const-string v1, "Preview surface provider is null"

    .line 242
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 244
    :cond_4
    invoke-interface {v1}, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$PreviewSurfaceProvider;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v1, "Preview surface is null"

    .line 246
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    move-object v9, v0

    .line 250
    iget-object v3, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget v4, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mUserId:I

    iget-object v5, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mToken:[B

    iget-object v6, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    iget-object v7, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    iget-object v8, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->mDisabledFeatures:[I

    invoke-virtual/range {v3 .. v9}, Landroid/hardware/face/FaceManager;->enroll(I[BLandroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$EnrollmentCallback;[ILandroid/view/Surface;)V

    return-void
.end method
