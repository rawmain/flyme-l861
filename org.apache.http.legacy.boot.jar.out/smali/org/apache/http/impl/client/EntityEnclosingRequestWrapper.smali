.class public Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;
.super Lorg/apache/http/impl/client/RequestWrapper;
.source "EntityEnclosingRequestWrapper.java"

# interfaces
.implements Lorg/apache/http/HttpEntityEnclosingRequest;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private entity:Lorg/apache/http/HttpEntity;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    .locals 1
    .param p1, "request"    # Lorg/apache/http/HttpEntityEnclosingRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/RequestWrapper;-><init>(Lorg/apache/http/HttpRequest;)V

    .line 67
    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;->entity:Lorg/apache/http/HttpEntity;

    .line 65
    return-void
.end method


# virtual methods
.method public expectContinue()Z
    .locals 3

    .prologue
    .line 79
    const-string/jumbo v1, "Expect"

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 80
    .local v0, "expect":Lorg/apache/http/Header;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "100-continue"

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEntity()Lorg/apache/http/HttpEntity;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;->entity:Lorg/apache/http/HttpEntity;

    return-object v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;->entity:Lorg/apache/http/HttpEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;->entity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setEntity(Lorg/apache/http/HttpEntity;)V
    .locals 0
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;

    .prologue
    .line 75
    iput-object p1, p0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;->entity:Lorg/apache/http/HttpEntity;

    .line 74
    return-void
.end method
