import pandas as pd
import pytest

from nexo_dados import profile_dataframe


def test_profile_dataframe_calculates_missing_values_and_cardinality():
    dataframe = pd.DataFrame({"cliente": [1, 2, 2], "renda": [1000.0, None, 2500.0]})

    profile = profile_dataframe(dataframe)

    assert profile.loc["renda", "missing_count"] == 1
    assert profile.loc["renda", "missing_rate"] == pytest.approx(1 / 3)
    assert profile.loc["cliente", "unique_count"] == 2


def test_profile_dataframe_rejects_non_dataframe():
    with pytest.raises(TypeError):
        profile_dataframe([])
