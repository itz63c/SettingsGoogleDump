.class public Lcom/android/settings/security/CredentialManagementAppAdapter$HeaderViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CredentialManagementAppAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/security/CredentialManagementAppAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field private final mAppIconView:Landroid/widget/ImageView;

.field private final mTitleView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/settings/security/CredentialManagementAppAdapter;


# direct methods
.method public constructor <init>(Lcom/android/settings/security/CredentialManagementAppAdapter;Landroid/view/View;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$HeaderViewHolder;->this$0:Lcom/android/settings/security/CredentialManagementAppAdapter;

    .line 73
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0d0184

    .line 74
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$HeaderViewHolder;->mAppIconView:Landroid/widget/ImageView;

    const p1, 0x7f0d0185

    .line 75
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$HeaderViewHolder;->mTitleView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public bindView()V
    .locals 8

    const/4 v0, 0x1

    const v1, 0x7f040ed2

    const/4 v2, 0x0

    .line 83
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$HeaderViewHolder;->this$0:Lcom/android/settings/security/CredentialManagementAppAdapter;

    .line 84
    invoke-static {v3}, Lcom/android/settings/security/CredentialManagementAppAdapter;->access$100(Lcom/android/settings/security/CredentialManagementAppAdapter;)Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$HeaderViewHolder;->this$0:Lcom/android/settings/security/CredentialManagementAppAdapter;

    invoke-static {v4}, Lcom/android/settings/security/CredentialManagementAppAdapter;->access$000(Lcom/android/settings/security/CredentialManagementAppAdapter;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 85
    iget-object v4, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$HeaderViewHolder;->mAppIconView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$HeaderViewHolder;->this$0:Lcom/android/settings/security/CredentialManagementAppAdapter;

    invoke-static {v5}, Lcom/android/settings/security/CredentialManagementAppAdapter;->access$100(Lcom/android/settings/security/CredentialManagementAppAdapter;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    iget-object v4, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$HeaderViewHolder;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$HeaderViewHolder;->this$0:Lcom/android/settings/security/CredentialManagementAppAdapter;

    invoke-static {v5}, Lcom/android/settings/security/CredentialManagementAppAdapter;->access$200(Lcom/android/settings/security/CredentialManagementAppAdapter;)Landroid/content/Context;

    move-result-object v5

    new-array v6, v0, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$HeaderViewHolder;->this$0:Lcom/android/settings/security/CredentialManagementAppAdapter;

    .line 87
    invoke-static {v7}, Lcom/android/settings/security/CredentialManagementAppAdapter;->access$100(Lcom/android/settings/security/CredentialManagementAppAdapter;)Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v6, v2

    .line 86
    invoke-virtual {v5, v1, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    iget-object v3, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$HeaderViewHolder;->mAppIconView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    iget-object v3, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$HeaderViewHolder;->mTitleView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$HeaderViewHolder;->this$0:Lcom/android/settings/security/CredentialManagementAppAdapter;

    invoke-static {v4}, Lcom/android/settings/security/CredentialManagementAppAdapter;->access$200(Lcom/android/settings/security/CredentialManagementAppAdapter;)Landroid/content/Context;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$HeaderViewHolder;->this$0:Lcom/android/settings/security/CredentialManagementAppAdapter;

    .line 91
    invoke-static {p0}, Lcom/android/settings/security/CredentialManagementAppAdapter;->access$000(Lcom/android/settings/security/CredentialManagementAppAdapter;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v2

    .line 90
    invoke-virtual {v4, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
