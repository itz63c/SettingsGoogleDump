.class final Lcom/google/android/libraries/hats20/model/QuestionMultipleSelect$1;
.super Ljava/lang/Object;
.source "QuestionMultipleSelect.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/hats20/model/QuestionMultipleSelect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/libraries/hats20/model/QuestionMultipleSelect;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/libraries/hats20/model/QuestionMultipleSelect;
    .locals 1

    .line 77
    new-instance p0, Lcom/google/android/libraries/hats20/model/QuestionMultipleSelect;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/hats20/model/QuestionMultipleSelect;-><init>(Landroid/os/Parcel;Lcom/google/android/libraries/hats20/model/QuestionMultipleSelect$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 74
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/hats20/model/QuestionMultipleSelect$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/libraries/hats20/model/QuestionMultipleSelect;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/google/android/libraries/hats20/model/QuestionMultipleSelect;
    .locals 0

    .line 82
    new-array p0, p1, [Lcom/google/android/libraries/hats20/model/QuestionMultipleSelect;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 74
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/hats20/model/QuestionMultipleSelect$1;->newArray(I)[Lcom/google/android/libraries/hats20/model/QuestionMultipleSelect;

    move-result-object p0

    return-object p0
.end method
