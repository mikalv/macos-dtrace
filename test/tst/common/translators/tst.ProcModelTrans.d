/*
 * CDDL HEADER START
 *
 * The contents of this file are subject to the terms of the
 * Common Development and Distribution License (the "License").
 * You may not use this file except in compliance with the License.
 *
 * You can obtain a copy of the license at usr/src/OPENSOLARIS.LICENSE
 * or http://www.opensolaris.org/os/licensing.
 * See the License for the specific language governing permissions
 * and limitations under the License.
 *
 * When distributing Covered Code, include this CDDL HEADER in each
 * file and include the License file at usr/src/OPENSOLARIS.LICENSE.
 * If applicable, add the following below this CDDL HEADER, with the
 * fields enclosed by brackets "[]" replaced with your own identifying
 * information: Portions Copyright [yyyy] [name of copyright owner]
 *
 * CDDL HEADER END
 */

/*
 * Copyright 2006 Sun Microsystems, Inc.  All rights reserved.
 * Use is subject to license terms.
 */

#pragma ident	"@(#)tst.ProcModelTrans.d	1.1	06/08/28 SMI"

/*
 * ASSERTION:
 * Use the translators in /usr/lib/dtrace/procfs.d
 *
 * SECTION: Translators/ Translator Declarations
 * SECTION: Translators/ Translate Operator
 * SECTION: Translators/Process Model Translators
 *
 */

#pragma D option quiet

proc_t T;

BEGIN
{
	mypr_addr = xlate < psinfo_t > (T).pr_addr;
	printf("pr_addr: %d", mypr_addr);
	exit(0);
}

ERROR
{
	exit(1);
}
