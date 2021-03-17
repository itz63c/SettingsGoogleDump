.class public Lcom/android/settings/wifi/WifiConfigController2;
.super Ljava/lang/Object;
.source "WifiConfigController2.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnKeyListener;


# static fields
.field static final UNDESIRED_CERTIFICATES:[Ljava/lang/String;


# instance fields
.field private final mActiveSubscriptionInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

.field private mContext:Landroid/content/Context;

.field private mDialogContainer:Landroid/widget/ScrollView;

.field private mDns1View:Landroid/widget/TextView;

.field private mDns2View:Landroid/widget/TextView;

.field private mDoNotProvideEapUserCertString:Ljava/lang/String;

.field private mEapAnonymousView:Landroid/widget/TextView;

.field private mEapCaCertSpinner:Landroid/widget/Spinner;

.field private mEapDomainView:Landroid/widget/TextView;

.field private mEapIdentityView:Landroid/widget/TextView;

.field mEapMethodSpinner:Landroid/widget/Spinner;

.field private mEapOcspSpinner:Landroid/widget/Spinner;

.field mEapSimSpinner:Landroid/widget/Spinner;

.field private mEapUserCertSpinner:Landroid/widget/Spinner;

.field private mGatewayView:Landroid/widget/TextView;

.field private mHiddenSettingsSpinner:Landroid/widget/Spinner;

.field private mHiddenWarningView:Landroid/widget/TextView;

.field private mHttpProxy:Landroid/net/ProxyInfo;

.field private mIpAddressView:Landroid/widget/TextView;

.field private mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

.field private mIpSettingsSpinner:Landroid/widget/Spinner;

.field private mLastShownEapMethod:I

.field private mLevels:[Ljava/lang/String;

.field private mMeteredSettingsSpinner:Landroid/widget/Spinner;

.field private mMode:I

.field private mMultipleCertSetString:Ljava/lang/String;

.field private mNetworkPrefixLengthView:Landroid/widget/TextView;

.field private mPasswordView:Landroid/widget/TextView;

.field private mPhase2Adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mPhase2PeapAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mPhase2Spinner:Landroid/widget/Spinner;

.field private mPhase2TtlsAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mPrivacySettingsSpinner:Landroid/widget/Spinner;

.field private mProxyExclusionListView:Landroid/widget/TextView;

.field private mProxyHostView:Landroid/widget/TextView;

.field private mProxyPacView:Landroid/widget/TextView;

.field private mProxyPortView:Landroid/widget/TextView;

.field private mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

.field private mProxySettingsSpinner:Landroid/widget/Spinner;

.field mSecurityInPosition:[Ljava/lang/Integer;

.field private mSecuritySpinner:Landroid/widget/Spinner;

.field private mSharedCheckBox:Landroid/widget/CheckBox;

.field private mSsidScanButton:Landroid/widget/ImageButton;

.field private mSsidView:Landroid/widget/TextView;

.field private mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

.field private mUnspecifiedCertString:Ljava/lang/String;

.field private mUseSystemCertsString:Ljava/lang/String;

.field private final mView:Landroid/view/View;

.field private final mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field mWifiEntrySecurity:I

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic $r8$lambda$02jllJg-vrL0Ftb3B3eYrpaGqRc(I)[Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/wifi/WifiConfigController2;->lambda$loadSims$0(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$R6W60oRXw15Khqunp0ARTWBLdVc(Lcom/android/settings/wifi/WifiConfigController2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->lambda$afterTextChanged$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$bTwvrhPKDHxSFZKDSt8SH9xEX1Y(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/wifi/WifiConfigController2;->lambda$loadCertificates$1(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MacRandSecret"

    const-string v1, "MacRandSapSecret"

    .line 141
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WifiConfigController2;->UNDESIRED_CERTIFICATES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/wifi/WifiConfigUiBase2;Landroid/view/View;Lcom/android/wifitrackerlib/WifiEntry;I)V
    .locals 1

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 196
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 198
    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mActiveSubscriptionInfos:Ljava/util/List;

    .line 215
    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    .line 216
    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    .line 217
    iput-object p3, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 218
    invoke-interface {p1}, Lcom/android/settings/wifi/WifiConfigUiBase2;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    const-string p2, "wifi"

    .line 221
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 222
    invoke-direct {p0, p3, p4}, Lcom/android/settings/wifi/WifiConfigController2;->initWifiConfigController2(Lcom/android/wifitrackerlib/WifiEntry;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/wifi/WifiConfigUiBase2;Landroid/view/View;Lcom/android/wifitrackerlib/WifiEntry;ILandroid/net/wifi/WifiManager;)V
    .locals 1

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 196
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 198
    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mActiveSubscriptionInfos:Ljava/util/List;

    .line 228
    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    .line 230
    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    .line 231
    iput-object p3, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 232
    invoke-interface {p1}, Lcom/android/settings/wifi/WifiConfigUiBase2;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    .line 233
    iput-object p5, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 234
    invoke-direct {p0, p3, p4}, Lcom/android/settings/wifi/WifiConfigController2;->initWifiConfigController2(Lcom/android/wifitrackerlib/WifiEntry;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiConfigController2;)Landroid/content/Context;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 2

    .line 424
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    invoke-interface {p0}, Lcom/android/settings/wifi/WifiConfigUiBase2;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f060294

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const v0, 0x7f0d0397

    .line 425
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    const p2, 0x7f0d05ca

    .line 426
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private configureSecuritySpinner()V
    .locals 7

    .line 1637
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    const v1, 0x7f04140c

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/WifiConfigUiBase2;->setTitle(I)V

    .line 1639
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0d04ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSsidView:Landroid/widget/TextView;

    .line 1640
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1641
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0d0491

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSecuritySpinner:Landroid/widget/Spinner;

    .line 1642
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1644
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    const v2, 0x1090008

    const v3, 0x1020014

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    const v1, 0x1090009

    .line 1646
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1647
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSecuritySpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1651
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    const v2, 0x7f041520

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1652
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSecurityInPosition:[Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1653
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isEnhancedOpenSupported()Z

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 1654
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    const v5, 0x7f041522

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1655
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSecurityInPosition:[Ljava/lang/Integer;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    .line 1657
    :goto_0
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    const v6, 0x7f041534

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1658
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSecurityInPosition:[Ljava/lang/Integer;

    add-int/lit8 v6, v1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v1

    .line 1659
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    const v4, 0x7f041537

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1660
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSecurityInPosition:[Ljava/lang/Integer;

    add-int/lit8 v4, v6, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v6

    .line 1661
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWpa3SaeSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1662
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    const v3, 0x7f041526

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1663
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSecurityInPosition:[Ljava/lang/Integer;

    add-int/lit8 v3, v4, 0x1

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    move v4, v3

    .line 1665
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    const v3, 0x7f04151c

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1666
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSecurityInPosition:[Ljava/lang/Integer;

    add-int/lit8 v3, v4, 0x1

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    .line 1667
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWpa3SuiteBSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1668
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    const v4, 0x7f04151d

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1669
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSecurityInPosition:[Ljava/lang/Integer;

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    .line 1672
    :cond_2
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 1674
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0d05a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1676
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->showIpConfigFields()V

    .line 1677
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->showProxyFields()V

    .line 1678
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0d05eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1680
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0d0278

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1681
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0d05ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1682
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1684
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setAdvancedOptionAccessibilityString()V

    return-void
.end method

.method private createAccessibleEntries([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)[Landroid/text/SpannableString;
    .locals 3

    .line 1763
    array-length p0, p1

    new-array p0, p0, [Landroid/text/SpannableString;

    const/4 v0, 0x0

    .line 1764
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 1765
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    .line 1766
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1765
    invoke-static {v1, v2}, Lcom/android/settings/Utils;->createAccessibleSequence(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    aput-object v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;
    .locals 0

    .line 843
    :try_start_0
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    check-cast p0, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getSpinnerAdapter(I)Landroid/widget/ArrayAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1717
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    .line 1718
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 1717
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiConfigController2;->getSpinnerAdapter([Ljava/lang/String;)Landroid/widget/ArrayAdapter;

    move-result-object p0

    return-object p0
.end method

.method private getSpinnerAdapterWithEapMethodsTts(I)Landroid/widget/ArrayAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1737
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1738
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f0100d5

    .line 1740
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0100d6

    .line 1742
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1746
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/settings/wifi/WifiConfigController2;->findAndReplaceTargetStrings([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 1750
    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/WifiConfigController2;->createAccessibleEntries([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)[Landroid/text/SpannableString;

    move-result-object p1

    .line 1754
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    const v1, 0x1090008

    invoke-direct {v0, p0, v1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const p0, 0x1090009

    .line 1756
    invoke-virtual {v0, p0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    return-object v0
.end method

.method private hideSoftKeyboard(Landroid/os/IBinder;)V
    .locals 1

    .line 1772
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x0

    .line 1774
    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private initWifiConfigController2(Lcom/android/wifitrackerlib/WifiEntry;I)V
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    .line 240
    :cond_0
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntrySecurity:I

    .line 241
    iput p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mMode:I

    .line 243
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0100e2

    .line 245
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mLevels:[Ljava/lang/String;

    .line 246
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x1110070

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const p2, 0x7f0100de

    .line 250
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/WifiConfigController2;->getSpinnerAdapterWithEapMethodsTts(I)Landroid/widget/ArrayAdapter;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2PeapAdapter:Landroid/widget/ArrayAdapter;

    goto :goto_2

    :cond_2
    :goto_1
    const p2, 0x7f0100dd

    .line 248
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/WifiConfigController2;->getSpinnerAdapter(I)Landroid/widget/ArrayAdapter;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2PeapAdapter:Landroid/widget/ArrayAdapter;

    :goto_2
    const p2, 0x7f0100e7

    .line 254
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/WifiConfigController2;->getSpinnerAdapter(I)Landroid/widget/ArrayAdapter;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2TtlsAdapter:Landroid/widget/ArrayAdapter;

    .line 256
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    const v1, 0x7f041570

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    .line 257
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    const v1, 0x7f0414e4

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mMultipleCertSetString:Ljava/lang/String;

    .line 258
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    const v1, 0x7f041572

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mUseSystemCertsString:Ljava/lang/String;

    .line 259
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    const v1, 0x7f041477

    .line 260
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    .line 262
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0d04ed

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSsidScanButton:Landroid/widget/ImageButton;

    .line 263
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0d01b6

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ScrollView;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mDialogContainer:Landroid/widget/ScrollView;

    .line 264
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0d02bf

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mIpSettingsSpinner:Landroid/widget/Spinner;

    .line 265
    invoke-virtual {p2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 266
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0d043b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxySettingsSpinner:Landroid/widget/Spinner;

    .line 267
    invoke-virtual {p2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 268
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0d04ae

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSharedCheckBox:Landroid/widget/CheckBox;

    .line 269
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0d0337

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mMeteredSettingsSpinner:Landroid/widget/Spinner;

    .line 270
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0d0277

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mHiddenSettingsSpinner:Landroid/widget/Spinner;

    .line 271
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0d041b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPrivacySettingsSpinner:Landroid/widget/Spinner;

    .line 272
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->isConnectedMacRandomizationSupported()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 273
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0d041c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 274
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 276
    :cond_3
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mHiddenSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {p2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 277
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0d027a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mHiddenWarningView:Landroid/widget/TextView;

    .line 279
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mHiddenSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const/16 v2, 0x8

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_3

    :cond_4
    move v1, v0

    .line 278
    :goto_3
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p2, 0x7

    new-array p2, p2, [Ljava/lang/Integer;

    .line 282
    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSecurityInPosition:[Ljava/lang/Integer;

    .line 284
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    const v1, 0x7f04150e

    if-nez p2, :cond_5

    .line 285
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->configureSecuritySpinner()V

    .line 286
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/settings/wifi/WifiConfigUiBase2;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 288
    :cond_5
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v3, p2}, Lcom/android/settings/wifi/WifiConfigUiBase2;->setTitle(Ljava/lang/CharSequence;)V

    .line 290
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v3, 0x7f0d02ae

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 293
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v3}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_b

    .line 294
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v3}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 295
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController2;->mMeteredSettingsSpinner:Landroid/widget/Spinner;

    iget v7, v3, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 296
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController2;->mHiddenSettingsSpinner:Landroid/widget/Spinner;

    iget-boolean v7, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 300
    iget v6, v3, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    .line 301
    invoke-static {v6}, Lcom/android/settings/wifi/details2/WifiPrivacyPreferenceController2;->translateMacRandomizedValueToPrefValue(I)I

    move-result v6

    .line 302
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPrivacySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 304
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/IpConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v6

    sget-object v7, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v6, v7, :cond_7

    .line 305
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController2;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 308
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v6

    .line 309
    invoke-virtual {v6}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 310
    iget-object v6, v6, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v6, :cond_6

    const v7, 0x7f0414cc

    .line 312
    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    .line 311
    invoke-direct {p0, p2, v7, v6}, Lcom/android/settings/wifi/WifiConfigController2;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_6
    move v6, v5

    goto :goto_4

    .line 315
    :cond_7
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController2;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v0}, Landroid/widget/Spinner;->setSelection(I)V

    move v6, v0

    .line 318
    :goto_4
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSharedCheckBox:Landroid/widget/CheckBox;

    iget-boolean v8, v3, Landroid/net/wifi/WifiConfiguration;->shared:Z

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 319
    iget-boolean v7, v3, Landroid/net/wifi/WifiConfiguration;->shared:Z

    if-nez v7, :cond_8

    move v6, v5

    .line 323
    :cond_8
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/IpConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v7

    .line 324
    sget-object v8, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v7, v8, :cond_9

    .line 325
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v5}, Landroid/widget/Spinner;->setSelection(I)V

    :goto_5
    move v6, v5

    goto :goto_6

    .line 327
    :cond_9
    sget-object v8, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v7, v8, :cond_a

    .line 328
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_5

    .line 331
    :cond_a
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 333
    :goto_6
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v7

    if-eqz v7, :cond_c

    const v7, 0x7f040da0

    .line 334
    iget-object v8, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    const v9, 0x7f040d9f

    .line 335
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v5, [Ljava/lang/Object;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    aput-object v3, v9, v0

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 334
    invoke-direct {p0, p2, v7, v3}, Lcom/android/settings/wifi/WifiConfigController2;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto :goto_7

    :cond_b
    move v6, v0

    .line 340
    :cond_c
    :goto_7
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v3}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 341
    invoke-virtual {v3}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v3

    if-eq v3, v4, :cond_d

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 342
    invoke-virtual {v3}, Lcom/android/wifitrackerlib/WifiEntry;->isSubscription()Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_d
    iget v3, p0, Lcom/android/settings/wifi/WifiConfigController2;->mMode:I

    if-eqz v3, :cond_11

    .line 344
    :cond_e
    invoke-direct {p0, v5, v5}, Lcom/android/settings/wifi/WifiConfigController2;->showSecurityFields(ZZ)V

    .line 345
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->showIpConfigFields()V

    .line 346
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->showProxyFields()V

    .line 347
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v7, 0x7f0d05ec

    .line 348
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    if-nez v6, :cond_f

    .line 351
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v8, 0x7f0d05eb

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 352
    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 353
    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 354
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setAdvancedOptionAccessibilityString()V

    .line 356
    :cond_f
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v7, 0x7f0d05ea

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v6, :cond_10

    move v6, v0

    goto :goto_8

    :cond_10
    move v6, v2

    .line 357
    :goto_8
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 360
    :cond_11
    iget v3, p0, Lcom/android/settings/wifi/WifiConfigController2;->mMode:I

    if-ne v3, v4, :cond_12

    .line 361
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/settings/wifi/WifiConfigUiBase2;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    :cond_12
    const v1, 0x7f041448

    if-ne v3, v5, :cond_13

    .line 363
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/settings/wifi/WifiConfigUiBase2;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 365
    :cond_13
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->getSignalString()Ljava/lang/String;

    move-result-object v3

    .line 367
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v6}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v6

    if-nez v6, :cond_14

    if-eqz v3, :cond_14

    .line 369
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/settings/wifi/WifiConfigUiBase2;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    :cond_14
    if-eqz v3, :cond_15

    const v1, 0x7f04154c

    .line 372
    invoke-direct {p0, p2, v1, v3}, Lcom/android/settings/wifi/WifiConfigController2;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 375
    :cond_15
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedInfo()Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 376
    iget v3, v1, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->linkSpeedMbps:I

    if-ltz v3, :cond_16

    const v3, 0x7f04154d

    const v6, 0x7f040a7a

    .line 378
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v5, v5, [Ljava/lang/Object;

    iget v7, v1, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->linkSpeedMbps:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v0

    .line 377
    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p2, v3, v5}, Lcom/android/settings/wifi/WifiConfigController2;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_16
    if-eqz v1, :cond_19

    .line 381
    iget v1, v1, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->frequencyMhz:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_19

    const/4 v3, 0x0

    const/16 v5, 0x960

    if-lt v1, v5, :cond_17

    const/16 v5, 0x9c4

    if-ge v1, v5, :cond_17

    const v1, 0x7f041427

    .line 387
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    :cond_17
    const/16 v5, 0x1324

    if-lt v1, v5, :cond_18

    const/16 v5, 0x170c

    if-ge v1, v5, :cond_18

    const v1, 0x7f041428

    .line 390
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    .line 392
    :cond_18
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected frequency "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "WifiConfigController2"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    if-eqz v3, :cond_19

    const v1, 0x7f0414b0

    .line 395
    invoke-direct {p0, p2, v1, v3}, Lcom/android/settings/wifi/WifiConfigController2;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_19
    const v1, 0x7f04151b

    .line 399
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 400
    invoke-virtual {v3, v0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v0

    .line 399
    invoke-direct {p0, p2, v1, v0}, Lcom/android/settings/wifi/WifiConfigController2;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 401
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v0, 0x7f0d02be

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 403
    :goto_a
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result p2

    if-nez p2, :cond_1a

    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 404
    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p2

    if-eq p2, v4, :cond_1a

    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 405
    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->isSubscription()Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 406
    :cond_1a
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    const v0, 0x7f0414ad

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/settings/wifi/WifiConfigUiBase2;->setForgetButton(Ljava/lang/CharSequence;)V

    .line 410
    :cond_1b
    :goto_b
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSsidScanButton:Landroid/widget/ImageButton;

    invoke-virtual {p2, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 412
    :goto_c
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSharedCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p2, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 414
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    const v0, 0x7f04143b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/android/settings/wifi/WifiConfigUiBase2;->setCancelButton(Ljava/lang/CharSequence;)V

    .line 415
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    invoke-interface {p1}, Lcom/android/settings/wifi/WifiConfigUiBase2;->getSubmitButton()Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 416
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->enableSubmitIfAppropriate()V

    .line 420
    :cond_1c
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const p1, 0x7f0d02e0

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 6

    .line 792
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mIpSettingsSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 793
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 794
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_0

    .line 795
    :cond_0
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    :goto_0
    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 797
    sget-object v2, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 798
    new-instance v0, Landroid/net/StaticIpConfiguration;

    invoke-direct {v0}, Landroid/net/StaticIpConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 799
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigController2;->validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I

    move-result v0

    if-eqz v0, :cond_1

    return v3

    .line 805
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 806
    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    const/4 v2, 0x0

    .line 807
    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mHttpProxy:Landroid/net/ProxyInfo;

    if-ne v0, v1, :cond_3

    .line 808
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 809
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 810
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 811
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 812
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 816
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 817
    :try_start_1
    invoke-static {v0, v2, v4}, Lcom/android/settings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move v5, v3

    :catch_1
    const v2, 0x7f040e94

    :goto_1
    if-nez v2, :cond_2

    .line 822
    new-instance v2, Landroid/net/ProxyInfo;

    invoke-direct {v2, v0, v5, v4}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mHttpProxy:Landroid/net/ProxyInfo;

    goto :goto_2

    :cond_2
    return v3

    :cond_3
    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    .line 826
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxyPacView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 827
    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 828
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 829
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v3

    .line 832
    :cond_4
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_5

    return v3

    .line 836
    :cond_5
    new-instance v2, Landroid/net/ProxyInfo;

    invoke-direct {v2, v0}, Landroid/net/ProxyInfo;-><init>(Landroid/net/Uri;)V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mHttpProxy:Landroid/net/ProxyInfo;

    :cond_6
    :goto_2
    return v1
.end method

.method private synthetic lambda$afterTextChanged$2()V
    .locals 0

    .line 1526
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->showWarningMessagesIfAppropriate()V

    .line 1527
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->enableSubmitIfAppropriate()V

    return-void
.end method

.method private static synthetic lambda$loadCertificates$1(Ljava/lang/String;)Z
    .locals 5

    .line 1479
    sget-object v0, Lcom/android/settings/wifi/WifiConfigController2;->UNDESIRED_CERTIFICATES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 1480
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$loadSims$0(I)[Ljava/lang/String;
    .locals 0

    .line 1444
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method private setAccessibilityDelegateForSecuritySpinners()V
    .locals 2

    .line 1114
    new-instance v0, Lcom/android/settings/wifi/WifiConfigController2$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiConfigController2$1;-><init>(Lcom/android/settings/wifi/WifiConfigController2;)V

    .line 1126
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 1127
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 1128
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 1129
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapOcspSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 1130
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method private setAdvancedOptionAccessibilityString()V
    .locals 2

    .line 1778
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0d05ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1779
    new-instance v1, Lcom/android/settings/wifi/WifiConfigController2$2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiConfigController2$2;-><init>(Lcom/android/settings/wifi/WifiConfigController2;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method private setAnonymousIdentInvisible()V
    .locals 2

    .line 1283
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0d02d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1284
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapAnonymousView:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setCaCertInvisible()V
    .locals 2

    .line 1263
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0d02d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1264
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController2;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    return-void
.end method

.method private setDomainInvisible()V
    .locals 2

    .line 1273
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0d02d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1274
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapDomainView:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setIdentityInvisible()V
    .locals 1

    .line 1255
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v0, 0x7f0d02d7

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setOcspInvisible()V
    .locals 2

    .line 1268
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0d02d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1269
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapOcspSpinner:Landroid/widget/Spinner;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method private setPasswordInvisible()V
    .locals 2

    .line 1288
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1289
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0d03ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1290
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v0, 0x7f0d04b7

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setPhase2Invisible()V
    .locals 1

    .line 1259
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v0, 0x7f0d02dc

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 1509
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p0

    check-cast p0, Landroid/widget/ArrayAdapter;

    .line 1510
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1511
    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1512
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private setUserCertInvisible()V
    .locals 2

    .line 1278
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0d02df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1279
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapUserCertSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController2;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    return-void
.end method

.method private setVisibility(II)V
    .locals 0

    .line 1403
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1405
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showEapFieldsByMethod(I)V
    .locals 7

    .line 1157
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0d02d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1158
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v2, 0x7f0d02d7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1159
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v2, 0x7f0d02d6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1163
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v2, 0x7f0d02d5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1164
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v3, 0x7f0d02d9

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1165
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v3, 0x7f0d03ea

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1166
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v3, 0x7f0d04b7

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1167
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v3, 0x7f0d02de

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1169
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    invoke-interface {v0}, Lcom/android/settings/wifi/WifiConfigUiBase2;->getContext()Landroid/content/Context;

    const v0, 0x7f0d02d4

    const v4, 0x7f0d02dc

    const/16 v5, 0x8

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 1212
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setPhase2Invisible()V

    .line 1213
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setAnonymousIdentInvisible()V

    .line 1214
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setCaCertInvisible()V

    .line 1215
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setOcspInvisible()V

    .line 1216
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setDomainInvisible()V

    .line 1217
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setUserCertInvisible()V

    .line 1218
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setPasswordInvisible()V

    .line 1219
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setIdentityInvisible()V

    goto/16 :goto_0

    .line 1172
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setPhase2Invisible()V

    .line 1173
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setCaCertInvisible()V

    .line 1174
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setOcspInvisible()V

    .line 1175
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setDomainInvisible()V

    .line 1176
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setAnonymousIdentInvisible()V

    .line 1177
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setUserCertInvisible()V

    .line 1178
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1200
    :pswitch_2
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2TtlsAdapter:Landroid/widget/ArrayAdapter;

    if-eq p1, v6, :cond_0

    .line 1201
    iput-object v6, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 1202
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1204
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1205
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1206
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setUserCertInvisible()V

    .line 1207
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1181
    :pswitch_3
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v0, 0x7f0d02df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1182
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setPhase2Invisible()V

    .line 1183
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setAnonymousIdentInvisible()V

    .line 1184
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setPasswordInvisible()V

    .line 1185
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1189
    :pswitch_4
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2PeapAdapter:Landroid/widget/ArrayAdapter;

    if-eq p1, v3, :cond_1

    .line 1190
    iput-object v3, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 1191
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1193
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1194
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1195
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->showPeapFields()V

    .line 1196
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setUserCertInvisible()V

    .line 1223
    :goto_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eq p1, v5, :cond_2

    .line 1224
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1225
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1228
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setDomainInvisible()V

    .line 1232
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setOcspInvisible()V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private showIpConfigFields()V
    .locals 5

    .line 1300
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0d02be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1302
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1303
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1306
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    const/4 v3, 0x1

    const v4, 0x7f0d04f9

    if-ne v2, v3, :cond_5

    .line 1307
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1308
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mIpAddressView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 1309
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v2, 0x7f0d02c1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mIpAddressView:Landroid/widget/TextView;

    .line 1310
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1311
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v2, 0x7f0d023c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mGatewayView:Landroid/widget/TextView;

    .line 1312
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1313
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v2, 0x7f0d039d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    .line 1315
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1316
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v2, 0x7f0d01c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mDns1View:Landroid/widget/TextView;

    .line 1317
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1318
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v2, 0x7f0d01c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mDns2View:Landroid/widget/TextView;

    .line 1319
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    if-eqz v0, :cond_6

    .line 1322
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v0

    .line 1323
    invoke-virtual {v0}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1325
    iget-object v1, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v1, :cond_2

    .line 1326
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mIpAddressView:Landroid/widget/TextView;

    .line 1327
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 1326
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1328
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    .line 1329
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v2

    .line 1328
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1332
    :cond_2
    iget-object v1, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-eqz v1, :cond_3

    .line 1333
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1336
    :cond_3
    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1337
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1338
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mDns1View:Landroid/widget/TextView;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1340
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1341
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mDns2View:Landroid/widget/TextView;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1346
    :cond_5
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method private showPeapFields()V
    .locals 6

    .line 1238
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const v1, 0x7f0d02de

    const/16 v2, 0x8

    const v3, 0x7f0d02d7

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eq v0, v5, :cond_1

    const/4 v5, 0x3

    if-eq v0, v5, :cond_1

    const/4 v5, 0x4

    if-ne v0, v5, :cond_0

    goto :goto_0

    .line 1246
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1247
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v3, 0x7f0d02d4

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1248
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v3, 0x7f0d03ea

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1249
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v3, 0x7f0d04b7

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1250
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1241
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapIdentityView:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1242
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1243
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setPasswordInvisible()V

    .line 1244
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private showProxyFields()V
    .locals 8

    .line 1353
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0d043c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1355
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1356
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1359
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    const/4 v3, 0x1

    const v4, 0x7f0d0439

    const v5, 0x7f0d0436

    const v6, 0x7f0d043e

    const/16 v7, 0x8

    if-ne v2, v3, :cond_2

    .line 1360
    invoke-direct {p0, v6, v1}, Lcom/android/settings/wifi/WifiConfigController2;->setVisibility(II)V

    .line 1361
    invoke-direct {p0, v5, v1}, Lcom/android/settings/wifi/WifiConfigController2;->setVisibility(II)V

    .line 1362
    invoke-direct {p0, v4, v7}, Lcom/android/settings/wifi/WifiConfigController2;->setVisibility(II)V

    .line 1363
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxyHostView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 1364
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v2, 0x7f0d0437

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxyHostView:Landroid/widget/TextView;

    .line 1365
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1366
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v2, 0x7f0d043a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxyPortView:Landroid/widget/TextView;

    .line 1367
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1368
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v2, 0x7f0d0435

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxyExclusionListView:Landroid/widget/TextView;

    .line 1369
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    if-eqz v0, :cond_5

    .line 1372
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1374
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1375
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1376
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxyExclusionListView:Landroid/widget/TextView;

    .line 1377
    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/net/module/util/ProxyUtils;->exclusionListAsString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1376
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1380
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 1381
    invoke-direct {p0, v6, v7}, Lcom/android/settings/wifi/WifiConfigController2;->setVisibility(II)V

    .line 1382
    invoke-direct {p0, v5, v7}, Lcom/android/settings/wifi/WifiConfigController2;->setVisibility(II)V

    .line 1383
    invoke-direct {p0, v4, v1}, Lcom/android/settings/wifi/WifiConfigController2;->setVisibility(II)V

    .line 1385
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxyPacView:Landroid/widget/TextView;

    if-nez v1, :cond_3

    .line 1386
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v2, 0x7f0d0438

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxyPacView:Landroid/widget/TextView;

    .line 1387
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_3
    if-eqz v0, :cond_5

    .line 1390
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1392
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1396
    :cond_4
    invoke-direct {p0, v6, v7}, Lcom/android/settings/wifi/WifiConfigController2;->setVisibility(II)V

    .line 1397
    invoke-direct {p0, v5, v7}, Lcom/android/settings/wifi/WifiConfigController2;->setVisibility(II)V

    .line 1398
    invoke-direct {p0, v4, v7}, Lcom/android/settings/wifi/WifiConfigController2;->setVisibility(II)V

    :cond_5
    :goto_1
    return-void
.end method

.method private showSecurityFields(ZZ)V
    .locals 12

    .line 923
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntrySecurity:I

    const/16 v1, 0x8

    const v2, 0x7f0d0492

    if-eqz v0, :cond_1b

    const/4 v6, 0x4

    if-ne v0, v6, :cond_0

    goto/16 :goto_9

    .line 928
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 930
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 931
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v2, 0x7f0d03e5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    .line 932
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 933
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 934
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 935
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v2, 0x7f0d04b6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 936
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 938
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 939
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    const v2, 0x7f04156e

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHint(I)V

    .line 943
    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntrySecurity:I

    const v2, 0x7f0d01db

    const/4 v8, 0x6

    const/4 v9, 0x3

    if-eq v0, v9, :cond_2

    if-eq v0, v8, :cond_2

    .line 945
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 948
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 952
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    const/4 v10, 0x1

    if-nez v0, :cond_3

    .line 954
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0d033a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    .line 955
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 956
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0d04c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapSimSpinner:Landroid/widget/Spinner;

    .line 957
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0d03ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    .line 958
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 959
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0d0128

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    .line 960
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 961
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0d03bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapOcspSpinner:Landroid/widget/Spinner;

    .line 962
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0d01cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapDomainView:Landroid/widget/TextView;

    .line 963
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 964
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0d05bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapUserCertSpinner:Landroid/widget/Spinner;

    .line 965
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 966
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0d029b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapIdentityView:Landroid/widget/TextView;

    .line 967
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0d0088

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapAnonymousView:Landroid/widget/TextView;

    .line 969
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->setAccessibilityDelegateForSecuritySpinners()V

    move v11, v10

    goto :goto_0

    :cond_3
    move v11, v7

    :goto_0
    if-eqz p1, :cond_7

    .line 974
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntrySecurity:I

    const v1, 0x7f0100d4

    if-ne v0, v8, :cond_4

    .line 975
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiConfigController2;->getSpinnerAdapter(I)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 976
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 978
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v10}, Landroid/widget/Spinner;->setSelection(I)V

    .line 979
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v7}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto :goto_2

    .line 980
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1110070

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    .line 986
    :cond_5
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiConfigController2;->getSpinnerAdapterWithEapMethodsTts(I)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 988
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 989
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v10}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto :goto_2

    :cond_6
    :goto_1
    const v0, 0x7f01006f

    .line 982
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigController2;->getSpinnerAdapter(I)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 983
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 984
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v10}, Landroid/widget/Spinner;->setEnabled(Z)V

    :cond_7
    :goto_2
    if-eqz p2, :cond_8

    .line 994
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->loadSims()V

    .line 996
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v2, "CACERT_"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/wifi/WifiConfigController2;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1002
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapUserCertSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController2;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v2, "USRPKEY_"

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/wifi/WifiConfigController2;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1012
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mUseSystemCertsString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController2;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    :cond_8
    if-eqz v11, :cond_1a

    .line 1016
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1017
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1018
    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 1019
    invoke-virtual {v11}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v1

    .line 1020
    invoke-virtual {v11}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v2

    .line 1021
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1022
    iput v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mLastShownEapMethod:I

    .line 1023
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiConfigController2;->showEapFieldsByMethod(I)V

    const-string v3, "Invalid phase 2 method "

    const-string v4, "WifiConfigController2"

    const/4 v5, 0x2

    if-eqz v1, :cond_e

    if-eq v1, v5, :cond_9

    goto/16 :goto_3

    :cond_9
    if-eq v2, v10, :cond_d

    if-eq v2, v5, :cond_c

    if-eq v2, v9, :cond_b

    if-eq v2, v6, :cond_a

    .line 1062
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1059
    :cond_a
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v9}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 1056
    :cond_b
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v5}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 1053
    :cond_c
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v10}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 1050
    :cond_d
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v7}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    :cond_e
    if-eq v2, v9, :cond_13

    if-eq v2, v6, :cond_12

    const/4 v1, 0x5

    if-eq v2, v1, :cond_11

    if-eq v2, v8, :cond_10

    const/4 v1, 0x7

    if-eq v2, v1, :cond_f

    .line 1043
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1040
    :cond_f
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v6}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 1037
    :cond_10
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v9}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 1034
    :cond_11
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v5}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 1031
    :cond_12
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v10}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 1028
    :cond_13
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1070
    :goto_3
    invoke-virtual {v11}, Landroid/net/wifi/WifiEnterpriseConfig;->isAuthenticationSimBased()Z

    move-result v1

    if-eqz v1, :cond_15

    move v1, v7

    .line 1071
    :goto_4
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mActiveSubscriptionInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_15

    .line 1072
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController2;->mActiveSubscriptionInfos:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result v3

    if-ne v2, v3, :cond_14

    .line 1073
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapSimSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_5

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1079
    :cond_15
    :goto_5
    invoke-virtual {v11}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1080
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mUseSystemCertsString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController2;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto :goto_6

    .line 1082
    :cond_16
    invoke-virtual {v11}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17

    .line 1084
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController2;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto :goto_6

    .line 1085
    :cond_17
    array-length v1, v0

    if-ne v1, v10, :cond_18

    .line 1086
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    aget-object v0, v0, v7

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/WifiConfigController2;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto :goto_6

    .line 1089
    :cond_18
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v2, "CACERT_"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/wifi/WifiConfigController2;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1095
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mMultipleCertSetString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController2;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1098
    :goto_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapOcspSpinner:Landroid/widget/Spinner;

    invoke-virtual {v11}, Landroid/net/wifi/WifiEnterpriseConfig;->getOcsp()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1099
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapDomainView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/net/wifi/WifiEnterpriseConfig;->getDomainSuffixMatch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1100
    invoke-virtual {v11}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v0

    .line 1101
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1102
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapUserCertSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController2;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto :goto_7

    .line 1104
    :cond_19
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/WifiConfigController2;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1106
    :goto_7
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1107
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 1109
    :cond_1a
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigController2;->showEapFieldsByMethod(I)V

    :goto_8
    return-void

    .line 925
    :cond_1b
    :goto_9
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I
    .locals 6

    .line 850
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mIpAddressView:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 852
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 853
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const v3, 0x7f0414d1

    if-eqz v2, :cond_1

    return v3

    .line 855
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigController2;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 856
    sget-object v2, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-virtual {v0, v2}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_4

    :cond_2
    const/4 v2, -0x1

    .line 862
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController2;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_4

    const/16 v4, 0x20

    if-le v2, v4, :cond_3

    goto :goto_0

    .line 866
    :cond_3
    new-instance v4, Landroid/net/LinkAddress;

    invoke-direct {v4, v0, v2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v4, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_4
    :goto_0
    const p0, 0x7f0414d2

    return p0

    :catch_0
    return v3

    .line 869
    :catch_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController2;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    invoke-interface {v4}, Lcom/android/settings/wifi/WifiConfigUiBase2;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0414e6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 875
    :goto_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController2;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 876
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 879
    :try_start_1
    invoke-static {v0, v2}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v0

    .line 880
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 881
    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aput-byte v3, v0, v2

    .line 882
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mGatewayView:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 887
    :cond_5
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiConfigController2;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v0

    const v2, 0x7f0414d0

    if-nez v0, :cond_6

    return v2

    .line 891
    :cond_6
    invoke-virtual {v0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v3

    if-eqz v3, :cond_7

    return v2

    .line 894
    :cond_7
    iput-object v0, p1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    .line 897
    :catch_2
    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 900
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const v3, 0x7f0414cf

    if-eqz v2, :cond_8

    .line 902
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mDns1View:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    invoke-interface {v2}, Lcom/android/settings/wifi/WifiConfigUiBase2;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f041474

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 904
    :cond_8
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigController2;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v0

    if-nez v0, :cond_9

    return v3

    .line 908
    :cond_9
    iget-object v2, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 911
    :goto_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 912
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 913
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigController2;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object p0

    if-nez p0, :cond_a

    return v3

    .line 917
    :cond_a
    iget-object p1, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    return v1

    :cond_c
    :goto_4
    return v3
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 1525
    new-instance p1, Lcom/android/settings/wifi/WifiConfigController2-$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/WifiConfigController2-$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/WifiConfigController2;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method enableSubmitIfAppropriate()V
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    invoke-interface {v0}, Lcom/android/settings/wifi/WifiConfigUiBase2;->getSubmitButton()Landroid/widget/Button;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 459
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->isSubmittable()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method findAndReplaceTargetStrings([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;
    .locals 5

    .line 1699
    array-length p0, p2

    array-length v0, p3

    if-eq p0, v0, :cond_0

    return-object p1

    .line 1703
    :cond_0
    array-length p0, p1

    new-array p0, p0, [Ljava/lang/CharSequence;

    const/4 v0, 0x0

    move v1, v0

    .line 1704
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 1705
    aget-object v2, p1, v1

    aput-object v2, p0, v1

    move v2, v0

    .line 1706
    :goto_1
    array-length v3, p2

    if-ge v2, v3, :cond_2

    .line 1707
    aget-object v3, p1, v1

    aget-object v4, p2, v2

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1708
    aget-object v3, p3, v2

    aput-object v3, p0, v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 13

    .line 565
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mMode:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 569
    :cond_0
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 571
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    const-string v3, "\""

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_2

    .line 572
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 574
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mHiddenSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-ne v2, v5, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    goto :goto_1

    .line 575
    :cond_2
    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v2

    if-nez v2, :cond_3

    .line 576
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v6}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 578
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 579
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-boolean v2, v2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 582
    :goto_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSharedCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    .line 584
    iget v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntrySecurity:I

    const/4 v3, 0x6

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/16 v8, 0x22

    packed-switch v2, :pswitch_data_0

    return-object v1

    .line 759
    :pswitch_0
    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 760
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-eqz v1, :cond_21

    .line 761
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 762
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_8

    .line 767
    :pswitch_1
    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto/16 :goto_8

    :pswitch_2
    const/4 v8, 0x5

    const/4 v9, 0x3

    if-ne v2, v3, :cond_4

    .line 620
    invoke-virtual {v0, v8}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_2

    .line 622
    :cond_4
    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 624
    :goto_2
    new-instance v2, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v2}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 625
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    .line 626
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v10

    .line 627
    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v11, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    const-string v11, "Unknown phase2 method"

    const-string v12, "WifiConfigController2"

    if-eqz v2, :cond_a

    if-eq v2, v7, :cond_5

    goto/16 :goto_3

    :cond_5
    if-eqz v10, :cond_9

    if-eq v10, v5, :cond_8

    if-eq v10, v7, :cond_7

    if-eq v10, v9, :cond_6

    .line 670
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 667
    :cond_6
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_3

    .line 664
    :cond_7
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_3

    .line 661
    :cond_8
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v10, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_3

    .line 658
    :cond_9
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_3

    :cond_a
    if-eqz v10, :cond_f

    if-eq v10, v5, :cond_e

    if-eq v10, v7, :cond_d

    if-eq v10, v9, :cond_c

    if-eq v10, v6, :cond_b

    .line 650
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 647
    :cond_b
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v10, 0x7

    invoke-virtual {v7, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_3

    .line 644
    :cond_c
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_3

    .line 641
    :cond_d
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_3

    .line 638
    :cond_e
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_3

    .line 635
    :cond_f
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 678
    :goto_3
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7}, Landroid/net/wifi/WifiEnterpriseConfig;->isAuthenticationSimBased()Z

    move-result v7

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController2;->mActiveSubscriptionInfos:Ljava/util/List;

    .line 679
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_10

    .line 680
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController2;->mActiveSubscriptionInfos:Ljava/util/List;

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapSimSpinner:Landroid/widget/Spinner;

    .line 681
    invoke-virtual {v10}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v10

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result v7

    iput v7, v0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    .line 684
    :cond_10
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 685
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v10, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    .line 686
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v10, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaPath(Ljava/lang/String;)V

    .line 687
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapDomainView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setDomainSuffixMatch(Ljava/lang/String;)V

    .line 688
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_4

    .line 690
    :cond_11
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mUseSystemCertsString:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 691
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v5, "/system/etc/security/cacerts"

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaPath(Ljava/lang/String;)V

    goto :goto_4

    .line 692
    :cond_12
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mMultipleCertSetString:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 693
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v1, :cond_15

    .line 694
    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "Multiple certs can only be set when editing saved network"

    .line 695
    invoke-static {v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :cond_13
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 699
    invoke-virtual {v5}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 701
    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v5

    .line 698
    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    goto :goto_4

    .line 704
    :cond_14
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    new-array v5, v5, [Ljava/lang/String;

    aput-object v7, v5, v4

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    .line 711
    :cond_15
    :goto_4
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 712
    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 713
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ca_cert ("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 714
    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ") and ca_path ("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 716
    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") should not both be non-null"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 713
    invoke-static {v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_16
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 722
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setOcsp(I)V

    goto :goto_5

    .line 724
    :cond_17
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapOcspSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setOcsp(I)V

    .line 727
    :goto_5
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 728
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, ""

    if-nez v4, :cond_18

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController2;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    .line 729
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    :cond_18
    move-object v1, v5

    .line 734
    :cond_19
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    if-eq v2, v6, :cond_1c

    if-eq v2, v8, :cond_1c

    if-ne v2, v3, :cond_1a

    goto :goto_6

    :cond_1a
    if-ne v2, v9, :cond_1b

    .line 739
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 740
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    goto :goto_7

    .line 742
    :cond_1b
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 743
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapAnonymousView:Landroid/widget/TextView;

    .line 744
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 743
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    goto :goto_7

    .line 736
    :cond_1c
    :goto_6
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 737
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 747
    :goto_7
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 750
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-lez v1, :cond_21

    .line 751
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 755
    :cond_1d
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 605
    :pswitch_3
    invoke-virtual {v0, v7}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 606
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-eqz v1, :cond_21

    .line 607
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[0-9A-Fa-f]{64}"

    .line 608
    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 609
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_8

    .line 611
    :cond_1e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_8

    .line 590
    :pswitch_4
    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 591
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-eqz v1, :cond_21

    .line 592
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    .line 593
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    if-eq v1, v3, :cond_1f

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_1f

    const/16 v3, 0x3a

    if-ne v1, v3, :cond_20

    :cond_1f
    const-string v1, "[0-9A-Fa-f]*"

    .line 596
    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 597
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v2, v1, v4

    goto :goto_8

    .line 599
    :cond_20
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    goto :goto_8

    .line 586
    :pswitch_5
    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 774
    :cond_21
    :goto_8
    new-instance v1, Landroid/net/IpConfiguration;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController2;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController2;->mHttpProxy:Landroid/net/ProxyInfo;

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    .line 777
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mMeteredSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_22

    .line 778
    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 781
    :cond_22
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPrivacySettingsSpinner:Landroid/widget/Spinner;

    if-eqz p0, :cond_23

    .line 784
    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p0

    .line 783
    invoke-static {p0}, Lcom/android/settings/wifi/details2/WifiPrivacyPreferenceController2;->translatePrefValueToMacRandomizedValue(I)I

    move-result p0

    iput p0, v0, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    :cond_23
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method getKeyStore()Landroid/security/KeyStore;
    .locals 0

    .line 1411
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object p0

    return-object p0
.end method

.method getSignalString()Ljava/lang/String;
    .locals 3

    .line 432
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-object v1

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 437
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mLevels:[Ljava/lang/String;

    array-length v2, p0

    if-ge v0, v2, :cond_1

    aget-object v1, p0, v0

    :cond_1
    return-object v1
.end method

.method getSpinnerAdapter([Ljava/lang/String;)Landroid/widget/ArrayAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1724
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    const v1, 0x1090008

    invoke-direct {v0, p0, v1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const p0, 0x1090009

    .line 1726
    invoke-virtual {v0, p0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    return-object v0
.end method

.method public getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;
    .locals 0

    .line 1633
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    return-object p0
.end method

.method hideForgetButton()V
    .locals 1

    .line 441
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    invoke-interface {p0}, Lcom/android/settings/wifi/WifiConfigUiBase2;->getForgetButton()Landroid/widget/Button;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    .line 444
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method hideSubmitButton()V
    .locals 1

    .line 448
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    invoke-interface {p0}, Lcom/android/settings/wifi/WifiConfigUiBase2;->getSubmitButton()Landroid/widget/Button;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    .line 451
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method isSubmittable()Z
    .locals 7

    .line 481
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget v3, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntrySecurity:I

    if-ne v3, v1, :cond_0

    .line 483
    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntrySecurity:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    .line 485
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiConfigController2;->isValidPsk(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntrySecurity:I

    const/4 v3, 0x5

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    .line 487
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiConfigController2;->isValidSaePassword(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    .line 490
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSsidView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_8

    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_5

    .line 492
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    if-nez v1, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_7

    .line 495
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    .line 496
    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_7

    goto :goto_1

    .line 499
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->ipAndProxyFieldsAreValid()Z

    move-result v0

    goto :goto_2

    :cond_8
    :goto_1
    move v0, v2

    .line 501
    :goto_2
    iget v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntrySecurity:I

    const/4 v3, 0x6

    const/4 v4, 0x3

    const/16 v5, 0x8

    if-eq v1, v4, :cond_9

    if-ne v1, v3, :cond_b

    :cond_9
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v6, 0x7f0d02d5

    .line 504
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v5, :cond_b

    .line 505
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 506
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_3
    move v0, v2

    goto :goto_4

    .line 510
    :cond_a
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapDomainView:Landroid/widget/TextView;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v6, 0x7f0d02d6

    .line 511
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v5, :cond_b

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapDomainView:Landroid/widget/TextView;

    .line 512
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_3

    .line 518
    :cond_b
    :goto_4
    iget v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntrySecurity:I

    if-eq v1, v4, :cond_c

    if-ne v1, v3, :cond_d

    :cond_c
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapUserCertSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v3, 0x7f0d02df

    .line 521
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v5, :cond_d

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapUserCertSpinner:Landroid/widget/Spinner;

    .line 522
    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_5

    :cond_d
    move v2, v0

    :goto_5
    return v2
.end method

.method isValidPsk(Ljava/lang/String;)Z
    .locals 2

    .line 463
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x1

    const/16 v1, 0x40

    if-ne p0, v1, :cond_0

    const-string p0, "[0-9A-Fa-f]{64}"

    invoke-virtual {p1, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    .line 465
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v1, 0x8

    if-lt p0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0x3f

    if-gt p0, p1, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method isValidSaePassword(Ljava/lang/String;)Z
    .locals 1

    .line 472
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0x3f

    if-gt p0, p1, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2

    .line 1459
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    invoke-interface {v0}, Lcom/android/settings/wifi/WifiConfigUiBase2;->getContext()Landroid/content/Context;

    .line 1461
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1462
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_0

    .line 1464
    iget-object p4, p0, Lcom/android/settings/wifi/WifiConfigController2;->mMultipleCertSetString:Ljava/lang/String;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p5, :cond_1

    .line 1467
    iget-object p4, p0, Lcom/android/settings/wifi/WifiConfigController2;->mUseSystemCertsString:Ljava/lang/String;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 p4, 0x0

    .line 1472
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->getKeyStore()Landroid/security/KeyStore;

    move-result-object p5

    const/16 v1, 0x3f2

    invoke-virtual {p5, p2, v1}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p2, "WifiConfigController2"

    const-string p5, "can\'t get the certificate list from KeyStore"

    .line 1474
    invoke-static {p2, p5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz p4, :cond_2

    .line 1476
    array-length p2, p4

    if-eqz p2, :cond_2

    .line 1477
    invoke-static {p4}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p2

    sget-object p4, Lcom/android/settings/wifi/WifiConfigController2-$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/settings/wifi/WifiConfigController2-$$ExternalSyntheticLambda2;

    .line 1478
    invoke-interface {p2, p4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    .line 1485
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    .line 1477
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1488
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    iget p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntrySecurity:I

    const/4 p4, 0x6

    if-eq p2, p4, :cond_3

    .line 1490
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1494
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p3, 0x2

    if-ne p2, p3, :cond_4

    .line 1495
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    .line 1496
    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto :goto_1

    :cond_4
    const/4 p2, 0x1

    .line 1498
    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1502
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 1501
    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/WifiConfigController2;->getSpinnerAdapter([Ljava/lang/String;)Landroid/widget/ArrayAdapter;

    move-result-object p0

    .line 1503
    invoke-virtual {p1, p0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method loadSims()V
    .locals 5

    .line 1416
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/SubscriptionManager;

    .line 1417
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1419
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 1421
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mActiveSubscriptionInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1424
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 1425
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mActiveSubscriptionInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 1426
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    goto :goto_1

    .line 1430
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mActiveSubscriptionInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1434
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mActiveSubscriptionInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    new-array v0, v1, [Ljava/lang/String;

    .line 1435
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    const v3, 0x7f0414eb

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1436
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapSimSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiConfigController2;->getSpinnerAdapter([Ljava/lang/String;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1437
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapSimSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1438
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapSimSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    return-void

    .line 1443
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayNames(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 1444
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v3, Lcom/android/settings/wifi/WifiConfigController2-$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/settings/wifi/WifiConfigController2-$$ExternalSyntheticLambda1;

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1445
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapSimSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiConfigController2;->getSpinnerAdapter([Ljava/lang/String;)Landroid/widget/ArrayAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1446
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapSimSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1447
    array-length v0, v0

    if-ne v0, v1, :cond_4

    .line 1448
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapSimSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    :cond_4
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 1565
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v1, 0x7f0d04b6

    if-ne v0, v1, :cond_1

    .line 1566
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result p1

    .line 1567
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    const/16 p2, 0x90

    goto :goto_0

    :cond_0
    const/16 p2, 0x80

    :goto_0
    or-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setInputType(I)V

    if-ltz p1, :cond_2

    .line 1571
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    check-cast p0, Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_1

    .line 1573
    :cond_1
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p2

    const v0, 0x7f0d05ec

    if-ne p2, v0, :cond_2

    .line 1575
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/settings/wifi/WifiConfigController2;->hideSoftKeyboard(Landroid/os/IBinder;)V

    const/16 p2, 0x8

    .line 1576
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 1577
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const p1, 0x7f0d05ea

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1543
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    if-ne p1, p3, :cond_0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 1544
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->isSubmittable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1545
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    invoke-interface {p0}, Lcom/android/settings/wifi/WifiConfigUiBase2;->dispatchSubmit()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1583
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSecuritySpinner:Landroid/widget/Spinner;

    const/16 p4, 0x8

    const/4 p5, 0x1

    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    .line 1585
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSecurityInPosition:[Ljava/lang/Integer;

    aget-object p1, p1, p3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntrySecurity:I

    .line 1586
    invoke-direct {p0, p5, p5}, Lcom/android/settings/wifi/WifiConfigController2;->showSecurityFields(ZZ)V

    .line 1588
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntrySecurity:I

    invoke-static {p1, p2}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->isSupportEnrolleeQrCodeScanner(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1589
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSsidScanButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    .line 1591
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSsidScanButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, p4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    .line 1593
    :cond_1
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-ne p1, p2, :cond_2

    .line 1594
    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    .line 1595
    iget p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mLastShownEapMethod:I

    if-eq p2, p1, :cond_8

    .line 1596
    iput p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mLastShownEapMethod:I

    .line 1597
    invoke-direct {p0, v0, p5}, Lcom/android/settings/wifi/WifiConfigController2;->showSecurityFields(ZZ)V

    goto :goto_1

    .line 1599
    :cond_2
    iget-object p5, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    if-ne p1, p5, :cond_3

    .line 1600
    invoke-direct {p0, v0, v0}, Lcom/android/settings/wifi/WifiConfigController2;->showSecurityFields(ZZ)V

    goto :goto_1

    .line 1601
    :cond_3
    iget-object p5, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    if-ne p1, p5, :cond_4

    .line 1602
    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p2

    if-nez p2, :cond_4

    .line 1603
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->showPeapFields()V

    goto :goto_1

    .line 1604
    :cond_4
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, p2, :cond_5

    .line 1605
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->showProxyFields()V

    goto :goto_1

    .line 1606
    :cond_5
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mHiddenSettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, p2, :cond_7

    .line 1607
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2;->mHiddenWarningView:Landroid/widget/TextView;

    if-nez p3, :cond_6

    goto :goto_0

    :cond_6
    move p4, v0

    :goto_0
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1610
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController2;->showIpConfigFields()V

    .line 1612
    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->showWarningMessagesIfAppropriate()V

    .line 1613
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->enableSubmitIfAppropriate()V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1554
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    if-ne p1, p3, :cond_0

    const/16 p1, 0x42

    if-ne p2, p1, :cond_0

    .line 1555
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->isSubmittable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1556
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    invoke-interface {p0}, Lcom/android/settings/wifi/WifiConfigUiBase2;->dispatchSubmit()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method showWarningMessagesIfAppropriate()V
    .locals 6

    .line 531
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0d03b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 532
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v3, 0x7f0d03b0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 533
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v4, 0x7f0d04ee

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 535
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mSsidView:Landroid/widget/TextView;

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 536
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 537
    invoke-static {v0}, Lcom/android/settings/wifi/WifiUtils;->isSSIDTooLong(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v4, 0x7f0d02d5

    .line 542
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 543
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapDomainView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v4, 0x7f0d02d6

    .line 544
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapDomainView:Landroid/widget/TextView;

    .line 545
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 548
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 552
    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mWifiEntrySecurity:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    .line 553
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 554
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 555
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 556
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public updatePassword()V
    .locals 2

    .line 1625
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0d03e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1627
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mView:Landroid/view/View;

    const v1, 0x7f0d04b6

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x90

    goto :goto_0

    :cond_0
    const/16 p0, 0x80

    :goto_0
    or-int/lit8 p0, p0, 0x1

    .line 1626
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setInputType(I)V

    return-void
.end method
