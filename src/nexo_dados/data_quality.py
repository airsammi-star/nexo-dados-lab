"""Diagnósticos pequenos e reutilizáveis para conjuntos de dados tabulares."""

from __future__ import annotations

import pandas as pd


def profile_dataframe(dataframe: pd.DataFrame) -> pd.DataFrame:
    """Resume tipo, volume de valores ausentes e cardinalidade por coluna.

    A função não altera o DataFrame recebido e retorna uma linha por coluna.
    """
    if not isinstance(dataframe, pd.DataFrame):
        raise TypeError("dataframe deve ser uma instância de pandas.DataFrame")

    row_count = len(dataframe)
    missing_count = dataframe.isna().sum()
    missing_rate = missing_count.div(row_count).fillna(0.0)

    return pd.DataFrame(
        {
            "dtype": dataframe.dtypes.astype(str),
            "missing_count": missing_count,
            "missing_rate": missing_rate,
            "unique_count": dataframe.nunique(dropna=True),
        }
    ).rename_axis("column")
