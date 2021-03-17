.class public Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;
.super Landroidx/fragment/app/FragmentActivity;
.source "FaceEnrollConfirmation.java"


# instance fields
.field private mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

.field private mNextClicked:Z

.field protected mToken:[B

.field protected mUserId:I


# direct methods
.method public static synthetic $r8$lambda$DfDvMLrzZGnTURUZsXiwyUfbLPc(Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->onButtonPositive(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private getLayout()Lcom/google/android/setupdesign/GlifLayout;
    .locals 1

    const v0, 0x7f0d0212

    .line 106
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupdesign/GlifLayout;

    return-object p0
.end method

.method private launchFaceSettings()V
    .locals 3

    .line 154
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.FACE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.settings"

    .line 155
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->mToken:[B

    const-string v2, "hw_auth_token"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 157
    iget v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->mUserId:I

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x4020000

    .line 158
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 159
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private onButtonPositive(Landroid/view/View;)V
    .locals 3

    const/4 p1, 0x1

    .line 110
    iput-boolean p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->mNextClicked:Z

    .line 111
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from_settings_summary"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->launchFaceSettings()V

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->revokeChallenge()V

    .line 120
    :cond_1
    invoke-static {p0}, Lcom/android/settings/biometrics/BiometricUtils;->isMultiBiometricEnrollmentFlow(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "FaceEnrollConfirmation"

    const-string v1, "Multi-biometric flow"

    .line 121
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 123
    invoke-static {p0, v0}, Lcom/android/settings/biometrics/BiometricUtils;->tryStartingNextBiometricEnroll(Landroid/app/Activity;I)Z

    move-result v2

    :cond_2
    if-nez v2, :cond_3

    .line 127
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 128
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
    :goto_0
    return-void
.end method

.method private revokeChallenge()V
    .locals 1

    .line 147
    const-class v0, Landroid/hardware/face/FaceManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/face/FaceManager;

    if-eqz p0, :cond_0

    .line 149
    invoke-virtual {p0}, Landroid/hardware/face/FaceManager;->revokeChallenge()V

    :cond_0
    return-void
.end method

.method private setHeaderText(I)V
    .locals 2

    .line 134
    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/setupdesign/GlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 136
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    if-eq v1, p1, :cond_1

    .line 138
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 139
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAccessibilityLiveRegion(I)V

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    .line 142
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 164
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    .line 168
    invoke-virtual {p0, p3}, Landroid/app/Activity;->setResult(I)V

    .line 169
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 171
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Next biometric\'s result: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FaceEnrollConfirmation"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {p0, p3}, Landroid/app/Activity;->setResult(I)V

    .line 175
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 2

    const v0, 0x7f1301b7

    const/4 v1, 0x1

    .line 94
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 95
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 52
    invoke-static {}, Lcom/google/android/setupdesign/util/ThemeResolver;->getDefault()Lcom/google/android/setupdesign/util/ThemeResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/setupdesign/util/ThemeResolver;->applyTheme(Landroid/app/Activity;)V

    .line 54
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0600d5

    .line 55
    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "hw_auth_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->mToken:[B

    .line 58
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const-string v3, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->mUserId:I

    if-eqz p1, :cond_1

    .line 60
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->mToken:[B

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->mToken:[B

    .line 63
    :cond_0
    iget v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->mUserId:I

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->mUserId:I

    :cond_1
    const p1, 0x7f040fba

    .line 66
    invoke-direct {p0, p1}, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->setHeaderText(I)V

    .line 68
    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object p1

    const-class v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 70
    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f040fac

    .line 72
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation-$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation-$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;)V

    .line 73
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p0

    const/4 v0, 0x5

    .line 74
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p0

    const v0, 0x7f1301f5

    .line 75
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p0

    .line 76
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p0

    .line 70
    invoke-virtual {p1, p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 100
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 101
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->mToken:[B

    const-string v1, "hw_auth_token"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 102
    iget p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->mUserId:I

    const-string v0, "android.intent.extra.USER_ID"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 83
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    .line 85
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->mNextClicked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x3

    .line 87
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
