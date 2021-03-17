.class public Lcom/android/settings/biometrics/BiometricEnrollCheckbox;
.super Landroid/widget/LinearLayout;
.source "BiometricEnrollCheckbox.java"


# instance fields
.field private final mCheckBox:Landroid/widget/CheckBox;

.field private final mDescriptionView:Landroid/widget/TextView;

.field private mListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/android/settings/biometrics/BiometricEnrollCheckbox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/biometrics/BiometricEnrollCheckbox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/biometrics/BiometricEnrollCheckbox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 64
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const p4, 0x7f06005f

    const/4 v0, 0x1

    invoke-virtual {p3, p4, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p3, 0x7f0d013c

    .line 67
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/android/settings/biometrics/BiometricEnrollCheckbox;->mCheckBox:Landroid/widget/CheckBox;

    const p3, 0x7f0d0290

    .line 68
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const p4, 0x7f0d057f

    .line 69
    invoke-virtual {p0, p4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    const v1, 0x7f0d01ab

    .line 70
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/biometrics/BiometricEnrollCheckbox;->mDescriptionView:Landroid/widget/TextView;

    .line 72
    new-instance v2, Lcom/android/settings/biometrics/-$$Lambda$BiometricEnrollCheckbox$C9PtCCmNU7a-rpA9Y-p_0koDxG8;

    invoke-direct {v2, p0}, Lcom/android/settings/biometrics/-$$Lambda$BiometricEnrollCheckbox$C9PtCCmNU7a-rpA9Y-p_0koDxG8;-><init>(Lcom/android/settings/biometrics/BiometricEnrollCheckbox;)V

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    sget-object p0, Lcom/android/settings/R$styleable;->BiometricEnrollCheckbox:[I

    .line 82
    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 85
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p2, 0x2

    .line 87
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    const/4 v0, 0x0

    .line 89
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 90
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    throw p1
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    .line 73
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollCheckbox;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 76
    :cond_0
    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollCheckbox;->mListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_1

    .line 77
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollCheckbox;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$new$0$BiometricEnrollCheckbox(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollCheckbox;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public setDescription(I)V
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollCheckbox;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 104
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 105
    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollCheckbox;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    return-void
.end method

.method public setListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollCheckbox;->mListener:Landroid/view/View$OnClickListener;

    return-void
.end method
