.class public Landroid/net/http/DelegatingSSLSession$CertificateWrap;
.super Landroid/net/http/DelegatingSSLSession;
.source "DelegatingSSLSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/http/DelegatingSSLSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CertificateWrap"
.end annotation


# instance fields
.field private final mCertificate:Ljava/security/cert/Certificate;


# direct methods
.method public constructor <init>(Ljava/security/cert/Certificate;)V
    .locals 0
    .param p1, "certificate"    # Ljava/security/cert/Certificate;

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/net/http/DelegatingSSLSession;-><init>()V

    .line 41
    iput-object p1, p0, Landroid/net/http/DelegatingSSLSession$CertificateWrap;->mCertificate:Ljava/security/cert/Certificate;

    .line 40
    return-void
.end method


# virtual methods
.method public getPeerCertificates()[Ljava/security/cert/Certificate;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/security/cert/Certificate;

    iget-object v1, p0, Landroid/net/http/DelegatingSSLSession$CertificateWrap;->mCertificate:Ljava/security/cert/Certificate;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method
