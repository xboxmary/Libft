/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isalnum.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: pallyson <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/10/31 19:52:46 by pallyson          #+#    #+#             */
/*   Updated: 2020/10/31 20:49:45 by pallyson         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int	ft_isalnum(int ch)
{
	if ((ch >= 65 && ch <= 90) || (ch >= 97 && ch <= 122) ||
		(ch >= 48 && ch <= 57))
		return (1);
	return (0);
}
