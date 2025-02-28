import pandas as pd

from sklearn.preprocessing import OrdinalEncoder


def download_dataset(path):
    dataset = pd.read_csv(path)
    return dataset


def preprocess_dataset(dataset):
    dataset = dataset.drop(columns=['id'])
    dataset_clear = dataset.dropna(subset=('accident', 'fuel_type'))
    dataset_clear.loc[dataset_clear['clean_title'] != 'Yes', 'clean_title'] = 'No'

    ordinal = OrdinalEncoder()
    ordinal.fit(dataset_clear)
    ordinal_encoded = ordinal.transform(dataset_clear)

    dataset_clear = pd.DataFrame(ordinal_encoded, columns=dataset_clear.columns)

    dataset_clear.to_csv('cars.csv')


if __name__ == '__main__':
    dataset_path = 'https://raw.githubusercontent.com/cybertabyretka/PMO_Datasets/main/train.csv'
    dataset = download_dataset(dataset_path)
    preprocess_dataset(dataset)
