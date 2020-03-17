# Created by: Michał Zielonka <zielonka.michal@gmail.com>
# $FreeBSD$

PORTNAME=	ExtUtils-Typemaps-Default
PORTVERSION=	1.05
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	zielonka.michal@gmail.com
COMMENT=	This is a set of useful typemaps

LICENSE=	ART10 GPLv1+
LICENSE_COMB=	dual

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	p5-ExtUtils-ParseXS>=3.18:devel/p5-ExtUtils-ParseXS

USES=		perl5

NO_ARCH=	yes
USE_PERL5=	modbuild
ALL_TARGET=	build

.include <bsd.port.mk>
