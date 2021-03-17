.class public Lcom/google/android/settings/biometrics/face/FaceEnrollParticipation;
.super Landroidx/fragment/app/FragmentActivity;
.source "FaceEnrollParticipation.java"


# instance fields
.field private mFaceService:Landroid/os/IBinder;

.field private mNextLaunched:Z

.field private mPrimaryButton:Lcom/google/android/setupcompat/template/FooterButton;

.field private mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private getLayout()Lcom/google/android/setupdesign/GlifLayout;
    .locals 1

    const v0, 0x7f0d0214

    .line 102
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupdesign/GlifLayout;

    return-object p0
.end method

.method public static synthetic lambda$TpjbW3RD0QWDKhZyk2bGZZeQDeU(Lcom/google/android/settings/biometrics/face/FaceEnrollParticipation;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/biometrics/face/FaceEnrollParticipation;->onButtonNegative(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$idzcy7lVwEmH4EmvKhV3ufaJv3U(Lcom/google/android/settings/biometrics/face/FaceEnrollParticipation;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/biometrics/face/FaceEnrollParticipation;->onButtonPositive(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollParticipation;->mPrimaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/setupcompat/template/FooterButton;->setEnabled(Z)V

    return-void
.end method

.method private onButtonNegative(Landroid/view/View;)V
    .locals 3

    const-string p1, "--disable"

    .line 114
    invoke-virtual {p0, p1}, Lcom/google/android/settings/biometrics/face/FaceEnrollParticipation;->sendDebugMessageToFaceService(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollParticipation;->mUserId:I

    const-string v1, "biometric_debug_enabled"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 117
    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollParticipation;->startEnrolling()V

    return-void
.end method

.method private onButtonPositive(Landroid/view/View;)V
    .locals 3

    const-string p1, "FaceEnrollParticipation"

    const-string v0, "Participant agreed to data collection"

    .line 106
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "--enable"

    .line 107
    invoke-virtual {p0, p1}, Lcom/google/android/settings/biometrics/face/FaceEnrollParticipation;->sendDebugMessageToFaceService(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollParticipation;->mUserId:I

    const-string v1, "biometric_debug_enabled"

    const/4 v2, 0x1

    invoke-static {p1, v1, v2, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 110
    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollParticipation;->startEnrolling()V

    return-void
.end method

.method private startEnrolling()V
    .locals 4

    const/4 v0, 0x1

    .line 147
    iput-boolean v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollParticipation;->mNextLaunched:Z

    .line 149
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "accessibility_diversity"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 151
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 153
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.settings.future.biometrics.faceenroll.action.ENROLL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 156
    invoke-virtual {p0, v1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$0$FaceEnrollParticipation(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/biometrics/face/FaceEnrollParticipation;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 162
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 163
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 2

    const v0, 0x7f1301b4

    const/4 v1, 0x1

    .line 86
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 87
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 48
    invoke-static {}, Lcom/google/android/setupdesign/util/ThemeResolver;->getDefault()Lcom/google/android/setupdesign/util/ThemeResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/setupdesign/util/ThemeResolver;->applyTheme(Landroid/app/Activity;)V

    .line 50
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0600da

    .line 51
    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 53
    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollParticipation;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object p1

    const-class v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 54
    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f040833

    .line 55
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/settings/biometrics/face/-$$Lambda$FaceEnrollParticipation$idzcy7lVwEmH4EmvKhV3ufaJv3U;

    invoke-direct {v1, p0}, Lcom/google/android/settings/biometrics/face/-$$Lambda$FaceEnrollParticipation$idzcy7lVwEmH4EmvKhV3ufaJv3U;-><init>(Lcom/google/android/settings/biometrics/face/FaceEnrollParticipation;)V

    .line 56
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    const/4 v1, 0x5

    .line 57
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    const v1, 0x7f1301f2

    .line 58
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollParticipation;->mPrimaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    const/4 v1, 0x0

    .line 60
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setEnabled(Z)V

    .line 61
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollParticipation;->mPrimaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 63
    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f04083d

    .line 65
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/settings/biometrics/face/-$$Lambda$FaceEnrollParticipation$TpjbW3RD0QWDKhZyk2bGZZeQDeU;

    invoke-direct {v1, p0}, Lcom/google/android/settings/biometrics/face/-$$Lambda$FaceEnrollParticipation$TpjbW3RD0QWDKhZyk2bGZZeQDeU;-><init>(Lcom/google/android/settings/biometrics/face/FaceEnrollParticipation;)V

    .line 66
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    const/4 v1, 0x7

    .line 67
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    const v1, 0x7f1301f3

    .line 68
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    .line 63
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollParticipation;->mUserId:I

    const p1, 0x7f0d0072

    .line 73
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 74
    new-instance v0, Lcom/google/android/settings/biometrics/face/-$$Lambda$FaceEnrollParticipation$Te9_09Q3pmahVo23mBuwCWxeNtg;

    invoke-direct {v0, p0}, Lcom/google/android/settings/biometrics/face/-$$Lambda$FaceEnrollParticipation$Te9_09Q3pmahVo23mBuwCWxeNtg;-><init>(Lcom/google/android/settings/biometrics/face/FaceEnrollParticipation;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    const-string p1, "face"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollParticipation;->mFaceService:Landroid/os/IBinder;

    if-nez p1, :cond_0

    const-string p0, "FaceEnrollParticipation"

    const-string p1, "Could not connect to face service"

    .line 80
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 92
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    .line 94
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollParticipation;->mNextLaunched:Z

    if-nez v0, :cond_0

    const/4 v0, 0x3

    .line 96
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 97
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method sendDebugMessageToFaceService(Ljava/lang/String;)V
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "IOException"

    const-string v1, "FaceEnrollParticipation"

    .line 122
    iget-object v2, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollParticipation;->mFaceService:Landroid/os/IBinder;

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 126
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v4, "/dev/null"

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 127
    :try_start_1
    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollParticipation;->mFaceService:Landroid/os/IBinder;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "--hal"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-interface {p0, v2, v4}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_4

    :catch_0
    move-exception p0

    .line 136
    :goto_0
    :try_start_3
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_4

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v2, v3

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    .line 129
    :goto_1
    :try_start_4
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 130
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_1

    .line 134
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_4

    :catch_3
    move-exception p0

    goto :goto_0

    :goto_2
    if-eqz v2, :cond_0

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_3

    :catch_4
    move-exception p1

    .line 136
    :try_start_7
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    :cond_0
    :goto_3
    throw p0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5

    :catch_5
    move-exception p0

    .line 141
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_4
    return-void
.end method
